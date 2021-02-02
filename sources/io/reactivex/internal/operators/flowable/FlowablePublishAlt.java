package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.flowables.ConnectableFlowable;
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

public final class FlowablePublishAlt<T> extends ConnectableFlowable<T> implements HasUpstreamPublisher<T>, ResettableConnectable {
    final int bufferSize;
    final AtomicReference<PublishConnection<T>> current = new AtomicReference<>();
    final Publisher<T> source;

    static final class InnerSubscription<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = 2845000326761540265L;
        final Subscriber<? super T> downstream;
        long emitted;
        final PublishConnection<T> parent;

        InnerSubscription(Subscriber<? super T> subscriber, PublishConnection<T> publishConnection) {
            this.downstream = subscriber;
            this.parent = publishConnection;
        }

        public void request(long j) {
            BackpressureHelper.addCancel(this, j);
            this.parent.drain();
        }

        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.remove(this);
                this.parent.drain();
            }
        }

        public boolean isCancelled() {
            return get() == Long.MIN_VALUE;
        }
    }

    static final class PublishConnection<T> extends AtomicInteger implements FlowableSubscriber<T>, Disposable {
        static final InnerSubscription[] EMPTY = new InnerSubscription[0];
        static final InnerSubscription[] TERMINATED = new InnerSubscription[0];
        private static final long serialVersionUID = -1672047311619175801L;
        final int bufferSize;
        final AtomicBoolean connect = new AtomicBoolean();
        int consumed;
        final AtomicReference<PublishConnection<T>> current;
        volatile boolean done;
        Throwable error;
        volatile SimpleQueue<T> queue;
        int sourceMode;
        final AtomicReference<InnerSubscription<T>[]> subscribers;
        final AtomicReference<Subscription> upstream = new AtomicReference<>();

        PublishConnection(AtomicReference<PublishConnection<T>> atomicReference, int i) {
            this.current = atomicReference;
            this.bufferSize = i;
            this.subscribers = new AtomicReference<>(EMPTY);
        }

        public void dispose() {
            this.subscribers.getAndSet(TERMINATED);
            this.current.compareAndSet(this, null);
            SubscriptionHelper.cancel(this.upstream);
        }

        public boolean isDisposed() {
            return this.subscribers.get() == TERMINATED;
        }

        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this.upstream, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        drain();
                        return;
                    } else if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        subscription.request((long) this.bufferSize);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.bufferSize);
                subscription.request((long) this.bufferSize);
            }
        }

        public void onNext(T t) {
            if (this.sourceMode != 0 || this.queue.offer(t)) {
                drain();
            } else {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            }
        }

        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.error = th;
            this.done = true;
            drain();
        }

        public void onComplete() {
            this.done = true;
            drain();
        }

        /* access modifiers changed from: 0000 */
        /* JADX WARNING: Code restructure failed: missing block: B:49:0x00d6, code lost:
            if (checkTerminated(r1.done, r2.isEmpty()) == false) goto L_0x00da;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:50:0x00d8, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void drain() {
            /*
                r20 = this;
                r1 = r20
                int r0 = r20.getAndIncrement()
                if (r0 == 0) goto L_0x0009
                return
            L_0x0009:
                io.reactivex.internal.fuseable.SimpleQueue<T> r0 = r1.queue
                int r2 = r1.consumed
                int r3 = r1.bufferSize
                int r4 = r3 >> 2
                int r3 = r3 - r4
                int r4 = r1.sourceMode
                r6 = 1
                if (r4 == r6) goto L_0x0019
                r4 = 1
                goto L_0x001a
            L_0x0019:
                r4 = 0
            L_0x001a:
                r7 = r2
                r2 = r0
                r0 = 1
            L_0x001d:
                if (r2 == 0) goto L_0x00d9
                r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublishAlt$InnerSubscription<T>[]> r10 = r1.subscribers
                java.lang.Object r10 = r10.get()
                io.reactivex.internal.operators.flowable.FlowablePublishAlt$InnerSubscription[] r10 = (io.reactivex.internal.operators.flowable.FlowablePublishAlt.InnerSubscription[]) r10
                int r11 = r10.length
                r12 = r8
                r8 = 0
                r9 = 0
            L_0x0030:
                if (r8 >= r11) goto L_0x004c
                r14 = r10[r8]
                long r15 = r14.get()
                r17 = -9223372036854775808
                int r19 = (r15 > r17 ? 1 : (r15 == r17 ? 0 : -1))
                if (r19 == 0) goto L_0x0048
                long r5 = r14.emitted
                long r5 = r15 - r5
                long r5 = java.lang.Math.min(r5, r12)
                r12 = r5
                r9 = 1
            L_0x0048:
                int r8 = r8 + 1
                r6 = 1
                goto L_0x0030
            L_0x004c:
                r5 = 0
                if (r9 != 0) goto L_0x0051
                r12 = r5
            L_0x0051:
                int r8 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
                if (r8 == 0) goto L_0x00cb
                boolean r8 = r1.done
                java.lang.Object r9 = r2.poll()     // Catch:{ Throwable -> 0x00b1 }
                if (r9 != 0) goto L_0x005f
                r11 = 1
                goto L_0x0060
            L_0x005f:
                r11 = 0
            L_0x0060:
                boolean r8 = r1.checkTerminated(r8, r11)
                if (r8 == 0) goto L_0x0067
                return
            L_0x0067:
                if (r11 == 0) goto L_0x006a
                goto L_0x00cb
            L_0x006a:
                int r8 = r10.length
                r11 = 0
            L_0x006c:
                r14 = 1
                if (r11 >= r8) goto L_0x0091
                r5 = r10[r11]
                boolean r6 = r5.isCancelled()
                if (r6 != 0) goto L_0x0086
                org.reactivestreams.Subscriber<? super T> r6 = r5.downstream
                r6.onNext(r9)
                r16 = r8
                r6 = r9
                long r8 = r5.emitted
                long r8 = r8 + r14
                r5.emitted = r8
                goto L_0x0089
            L_0x0086:
                r16 = r8
                r6 = r9
            L_0x0089:
                int r11 = r11 + 1
                r9 = r6
                r8 = r16
                r5 = 0
                goto L_0x006c
            L_0x0091:
                if (r4 == 0) goto L_0x00a4
                int r7 = r7 + 1
                if (r7 != r3) goto L_0x00a4
                java.util.concurrent.atomic.AtomicReference<org.reactivestreams.Subscription> r5 = r1.upstream
                java.lang.Object r5 = r5.get()
                org.reactivestreams.Subscription r5 = (org.reactivestreams.Subscription) r5
                long r6 = (long) r3
                r5.request(r6)
                r7 = 0
            L_0x00a4:
                long r12 = r12 - r14
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublishAlt$InnerSubscription<T>[]> r5 = r1.subscribers
                java.lang.Object r5 = r5.get()
                if (r10 == r5) goto L_0x00ae
                goto L_0x00e8
            L_0x00ae:
                r5 = 0
                goto L_0x0051
            L_0x00b1:
                r0 = move-exception
                r3 = r0
                io.reactivex.exceptions.Exceptions.throwIfFatal(r3)
                java.util.concurrent.atomic.AtomicReference<org.reactivestreams.Subscription> r0 = r1.upstream
                java.lang.Object r0 = r0.get()
                org.reactivestreams.Subscription r0 = (org.reactivestreams.Subscription) r0
                r0.cancel()
                r2.clear()
                r5 = 1
                r1.done = r5
                r1.signalError(r3)
                return
            L_0x00cb:
                r5 = 1
                boolean r6 = r1.done
                boolean r8 = r2.isEmpty()
                boolean r6 = r1.checkTerminated(r6, r8)
                if (r6 == 0) goto L_0x00da
                return
            L_0x00d9:
                r5 = 1
            L_0x00da:
                r1.consumed = r7
                int r0 = -r0
                int r0 = r1.addAndGet(r0)
                if (r0 != 0) goto L_0x00e4
                return
            L_0x00e4:
                if (r2 != 0) goto L_0x00e8
                io.reactivex.internal.fuseable.SimpleQueue<T> r2 = r1.queue
            L_0x00e8:
                r6 = 1
                goto L_0x001d
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowablePublishAlt.PublishConnection.drain():void");
        }

        /* access modifiers changed from: 0000 */
        public boolean checkTerminated(boolean z, boolean z2) {
            InnerSubscription[] innerSubscriptionArr;
            if (!z || !z2) {
                return false;
            }
            Throwable th = this.error;
            if (th != null) {
                signalError(th);
            } else {
                for (InnerSubscription innerSubscription : (InnerSubscription[]) this.subscribers.getAndSet(TERMINATED)) {
                    if (!innerSubscription.isCancelled()) {
                        innerSubscription.downstream.onComplete();
                    }
                }
            }
            return true;
        }

        /* access modifiers changed from: 0000 */
        public void signalError(Throwable th) {
            InnerSubscription[] innerSubscriptionArr;
            for (InnerSubscription innerSubscription : (InnerSubscription[]) this.subscribers.getAndSet(TERMINATED)) {
                if (!innerSubscription.isCancelled()) {
                    innerSubscription.downstream.onError(th);
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean add(InnerSubscription<T> innerSubscription) {
            InnerSubscription[] innerSubscriptionArr;
            InnerSubscription[] innerSubscriptionArr2;
            do {
                innerSubscriptionArr = (InnerSubscription[]) this.subscribers.get();
                if (innerSubscriptionArr == TERMINATED) {
                    return false;
                }
                int length = innerSubscriptionArr.length;
                innerSubscriptionArr2 = new InnerSubscription[(length + 1)];
                System.arraycopy(innerSubscriptionArr, 0, innerSubscriptionArr2, 0, length);
                innerSubscriptionArr2[length] = innerSubscription;
            } while (!this.subscribers.compareAndSet(innerSubscriptionArr, innerSubscriptionArr2));
            return true;
        }

        /* access modifiers changed from: 0000 */
        public void remove(InnerSubscription<T> innerSubscription) {
            InnerSubscription<T>[] innerSubscriptionArr;
            InnerSubscription[] innerSubscriptionArr2;
            do {
                innerSubscriptionArr = (InnerSubscription[]) this.subscribers.get();
                int length = innerSubscriptionArr.length;
                if (length == 0) {
                    break;
                }
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (innerSubscriptionArr[i2] == innerSubscription) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        innerSubscriptionArr2 = EMPTY;
                    } else {
                        InnerSubscription[] innerSubscriptionArr3 = new InnerSubscription[(length - 1)];
                        System.arraycopy(innerSubscriptionArr, 0, innerSubscriptionArr3, 0, i);
                        System.arraycopy(innerSubscriptionArr, i + 1, innerSubscriptionArr3, i, (length - i) - 1);
                        innerSubscriptionArr2 = innerSubscriptionArr3;
                    }
                } else {
                    return;
                }
            } while (!this.subscribers.compareAndSet(innerSubscriptionArr, innerSubscriptionArr2));
        }
    }

    public FlowablePublishAlt(Publisher<T> publisher, int i) {
        this.source = publisher;
        this.bufferSize = i;
    }

    public Publisher<T> source() {
        return this.source;
    }

    public int publishBufferSize() {
        return this.bufferSize;
    }

    /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void connect(io.reactivex.functions.Consumer<? super io.reactivex.disposables.Disposable> r5) {
        /*
            r4 = this;
        L_0x0000:
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublishAlt$PublishConnection<T>> r0 = r4.current
            java.lang.Object r0 = r0.get()
            io.reactivex.internal.operators.flowable.FlowablePublishAlt$PublishConnection r0 = (io.reactivex.internal.operators.flowable.FlowablePublishAlt.PublishConnection) r0
            if (r0 == 0) goto L_0x0010
            boolean r1 = r0.isDisposed()
            if (r1 == 0) goto L_0x0023
        L_0x0010:
            io.reactivex.internal.operators.flowable.FlowablePublishAlt$PublishConnection r1 = new io.reactivex.internal.operators.flowable.FlowablePublishAlt$PublishConnection
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublishAlt$PublishConnection<T>> r2 = r4.current
            int r3 = r4.bufferSize
            r1.<init>(r2, r3)
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublishAlt$PublishConnection<T>> r2 = r4.current
            boolean r0 = r2.compareAndSet(r0, r1)
            if (r0 != 0) goto L_0x0022
            goto L_0x0000
        L_0x0022:
            r0 = r1
        L_0x0023:
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.connect
            boolean r1 = r1.get()
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L_0x0036
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.connect
            boolean r1 = r1.compareAndSet(r3, r2)
            if (r1 == 0) goto L_0x0036
            goto L_0x0037
        L_0x0036:
            r2 = 0
        L_0x0037:
            r5.accept(r0)     // Catch:{ Throwable -> 0x0042 }
            if (r2 == 0) goto L_0x0041
            org.reactivestreams.Publisher<T> r5 = r4.source
            r5.subscribe(r0)
        L_0x0041:
            return
        L_0x0042:
            r5 = move-exception
            io.reactivex.exceptions.Exceptions.throwIfFatal(r5)
            java.lang.RuntimeException r5 = io.reactivex.internal.util.ExceptionHelper.wrapOrThrow(r5)
            goto L_0x004c
        L_0x004b:
            throw r5
        L_0x004c:
            goto L_0x004b
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowablePublishAlt.connect(io.reactivex.functions.Consumer):void");
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void subscribeActual(org.reactivestreams.Subscriber<? super T> r5) {
        /*
            r4 = this;
        L_0x0000:
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublishAlt$PublishConnection<T>> r0 = r4.current
            java.lang.Object r0 = r0.get()
            io.reactivex.internal.operators.flowable.FlowablePublishAlt$PublishConnection r0 = (io.reactivex.internal.operators.flowable.FlowablePublishAlt.PublishConnection) r0
            if (r0 != 0) goto L_0x001d
            io.reactivex.internal.operators.flowable.FlowablePublishAlt$PublishConnection r1 = new io.reactivex.internal.operators.flowable.FlowablePublishAlt$PublishConnection
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublishAlt$PublishConnection<T>> r2 = r4.current
            int r3 = r4.bufferSize
            r1.<init>(r2, r3)
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublishAlt$PublishConnection<T>> r2 = r4.current
            boolean r0 = r2.compareAndSet(r0, r1)
            if (r0 != 0) goto L_0x001c
            goto L_0x0000
        L_0x001c:
            r0 = r1
        L_0x001d:
            io.reactivex.internal.operators.flowable.FlowablePublishAlt$InnerSubscription r1 = new io.reactivex.internal.operators.flowable.FlowablePublishAlt$InnerSubscription
            r1.<init>(r5, r0)
            r5.onSubscribe(r1)
            boolean r2 = r0.add(r1)
            if (r2 == 0) goto L_0x0039
            boolean r5 = r1.isCancelled()
            if (r5 == 0) goto L_0x0035
            r0.remove(r1)
            goto L_0x0038
        L_0x0035:
            r0.drain()
        L_0x0038:
            return
        L_0x0039:
            java.lang.Throwable r0 = r0.error
            if (r0 == 0) goto L_0x0041
            r5.onError(r0)
            goto L_0x0044
        L_0x0041:
            r5.onComplete()
        L_0x0044:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowablePublishAlt.subscribeActual(org.reactivestreams.Subscriber):void");
    }

    public void resetIf(Disposable disposable) {
        this.current.compareAndSet((PublishConnection) disposable, null);
    }
}
