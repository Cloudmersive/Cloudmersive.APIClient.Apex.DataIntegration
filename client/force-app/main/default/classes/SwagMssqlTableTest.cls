@isTest
private class SwagMssqlTableTest {
    @isTest
    private static void equalsSameInstance() {
        SwagMssqlTable mssqlTable1 = SwagMssqlTable.getExample();
        SwagMssqlTable mssqlTable2 = mssqlTable1;
        SwagMssqlTable mssqlTable3 = new SwagMssqlTable();
        SwagMssqlTable mssqlTable4 = mssqlTable3;

        System.assert(mssqlTable1.equals(mssqlTable2));
        System.assert(mssqlTable2.equals(mssqlTable1));
        System.assert(mssqlTable1.equals(mssqlTable1));
        System.assert(mssqlTable3.equals(mssqlTable4));
        System.assert(mssqlTable4.equals(mssqlTable3));
        System.assert(mssqlTable3.equals(mssqlTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagMssqlTable mssqlTable1 = SwagMssqlTable.getExample();
        SwagMssqlTable mssqlTable2 = SwagMssqlTable.getExample();
        SwagMssqlTable mssqlTable3 = new SwagMssqlTable();
        SwagMssqlTable mssqlTable4 = new SwagMssqlTable();

        System.assert(mssqlTable1.equals(mssqlTable2));
        System.assert(mssqlTable2.equals(mssqlTable1));
        System.assert(mssqlTable3.equals(mssqlTable4));
        System.assert(mssqlTable4.equals(mssqlTable3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagMssqlTable mssqlTable1 = SwagMssqlTable.getExample();
        SwagMssqlTable mssqlTable2 = new SwagMssqlTable();

        System.assertEquals(false, mssqlTable1.equals(mssqlTable2));
        System.assertEquals(false, mssqlTable2.equals(mssqlTable1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagMssqlTable mssqlTable1 = SwagMssqlTable.getExample();
        SwagMssqlTable mssqlTable2 = new SwagMssqlTable();

        System.assertEquals(false, mssqlTable1.equals('foo'));
        System.assertEquals(false, mssqlTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagMssqlTable mssqlTable1 = SwagMssqlTable.getExample();
        SwagMssqlTable mssqlTable2 = new SwagMssqlTable();
        SwagMssqlTable mssqlTable3;

        System.assertEquals(false, mssqlTable1.equals(mssqlTable3));
        System.assertEquals(false, mssqlTable2.equals(mssqlTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagMssqlTable mssqlTable1 = SwagMssqlTable.getExample();
        SwagMssqlTable mssqlTable2 = new SwagMssqlTable();

        System.assertEquals(mssqlTable1.hashCode(), mssqlTable1.hashCode());
        System.assertEquals(mssqlTable2.hashCode(), mssqlTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagMssqlTable mssqlTable1 = SwagMssqlTable.getExample();
        SwagMssqlTable mssqlTable2 = SwagMssqlTable.getExample();
        SwagMssqlTable mssqlTable3 = new SwagMssqlTable();
        SwagMssqlTable mssqlTable4 = new SwagMssqlTable();

        System.assert(mssqlTable1.equals(mssqlTable2));
        System.assert(mssqlTable3.equals(mssqlTable4));
        System.assertEquals(mssqlTable1.hashCode(), mssqlTable2.hashCode());
        System.assertEquals(mssqlTable3.hashCode(), mssqlTable4.hashCode());
    }
}
