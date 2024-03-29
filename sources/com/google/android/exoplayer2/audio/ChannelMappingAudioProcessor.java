package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.AudioProcessor.UnhandledFormatException;
import com.google.android.exoplayer2.util.Assertions;
import java.nio.ByteBuffer;
import java.util.Arrays;

final class ChannelMappingAudioProcessor extends BaseAudioProcessor {
    private boolean active;
    @Nullable
    private int[] outputChannels;
    @Nullable
    private int[] pendingOutputChannels;

    ChannelMappingAudioProcessor() {
    }

    public void setChannelMap(@Nullable int[] iArr) {
        this.pendingOutputChannels = iArr;
    }

    public boolean configure(int i, int i2, int i3) throws UnhandledFormatException {
        boolean z = !Arrays.equals(this.pendingOutputChannels, this.outputChannels);
        this.outputChannels = this.pendingOutputChannels;
        int[] iArr = this.outputChannels;
        if (iArr == null) {
            this.active = false;
            return z;
        } else if (i3 != 2) {
            throw new UnhandledFormatException(i, i2, i3);
        } else if (!z && !setInputFormat(i, i2, i3)) {
            return false;
        } else {
            this.active = i2 != iArr.length;
            int i4 = 0;
            while (i4 < iArr.length) {
                int i5 = iArr[i4];
                if (i5 < i2) {
                    this.active = (i5 != i4) | this.active;
                    i4++;
                } else {
                    throw new UnhandledFormatException(i, i2, i3);
                }
            }
            return true;
        }
    }

    public boolean isActive() {
        return this.active;
    }

    public int getOutputChannelCount() {
        int[] iArr = this.outputChannels;
        return iArr == null ? this.channelCount : iArr.length;
    }

    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) Assertions.checkNotNull(this.outputChannels);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer replaceOutputBuffer = replaceOutputBuffer(((limit - position) / (this.channelCount * 2)) * iArr.length * 2);
        while (position < limit) {
            for (int i : iArr) {
                replaceOutputBuffer.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.channelCount * 2;
        }
        byteBuffer.position(limit);
        replaceOutputBuffer.flip();
    }

    /* access modifiers changed from: protected */
    public void onReset() {
        this.outputChannels = null;
        this.pendingOutputChannels = null;
        this.active = false;
    }
}
