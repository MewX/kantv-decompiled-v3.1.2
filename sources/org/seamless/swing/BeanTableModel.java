package org.seamless.swing;

import java.beans.PropertyDescriptor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.swing.table.AbstractTableModel;

public class BeanTableModel<T> extends AbstractTableModel {
    private Class<T> beanClass;
    private List<PropertyDescriptor> properties = new ArrayList();
    private List<T> rows;

    public BeanTableModel(Class<T> cls, Collection<T> collection) {
        this.beanClass = cls;
        this.rows = new ArrayList(collection);
    }

    public String getColumnName(int i) {
        return ((PropertyDescriptor) this.properties.get(i)).getDisplayName();
    }

    public int getColumnCount() {
        return this.properties.size();
    }

    public int getRowCount() {
        return this.rows.size();
    }

    public Object getValueAt(int i, int i2) {
        Object obj = this.rows.get(i);
        if (obj == null) {
            return null;
        }
        try {
            return ((PropertyDescriptor) this.properties.get(i2)).getReadMethod().invoke(obj, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void addColumn(String str, String str2) {
        try {
            PropertyDescriptor propertyDescriptor = new PropertyDescriptor(str2, this.beanClass, str2, null);
            propertyDescriptor.setDisplayName(str);
            this.properties.add(propertyDescriptor);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void resetColumns() {
        this.properties = new ArrayList();
    }

    public List<T> getRows() {
        return this.rows;
    }

    public void setRows(Collection<T> collection) {
        this.rows = new ArrayList(collection);
        fireTableDataChanged();
    }

    public void addRow(T t) {
        this.rows.add(t);
        fireTableRowsInserted(getRowCount() - 1, getRowCount() - 1);
    }

    public void removeRow(int i) {
        if (this.rows.size() > i && i != -1) {
            this.rows.remove(i);
            fireTableRowsDeleted(i, i);
        }
    }

    public void setRow(int i, T t) {
        this.rows.remove(i);
        this.rows.add(i, t);
        fireTableDataChanged();
    }
}
