@isTest
private class SwagMssqlBakEnumerateTablesResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult1 = SwagMssqlBakEnumerateTablesResult.getExample();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult2 = mssqlBakEnumerateTablesResult1;
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult3 = new SwagMssqlBakEnumerateTablesResult();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult4 = mssqlBakEnumerateTablesResult3;

        System.assert(mssqlBakEnumerateTablesResult1.equals(mssqlBakEnumerateTablesResult2));
        System.assert(mssqlBakEnumerateTablesResult2.equals(mssqlBakEnumerateTablesResult1));
        System.assert(mssqlBakEnumerateTablesResult1.equals(mssqlBakEnumerateTablesResult1));
        System.assert(mssqlBakEnumerateTablesResult3.equals(mssqlBakEnumerateTablesResult4));
        System.assert(mssqlBakEnumerateTablesResult4.equals(mssqlBakEnumerateTablesResult3));
        System.assert(mssqlBakEnumerateTablesResult3.equals(mssqlBakEnumerateTablesResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult1 = SwagMssqlBakEnumerateTablesResult.getExample();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult2 = SwagMssqlBakEnumerateTablesResult.getExample();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult3 = new SwagMssqlBakEnumerateTablesResult();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult4 = new SwagMssqlBakEnumerateTablesResult();

        System.assert(mssqlBakEnumerateTablesResult1.equals(mssqlBakEnumerateTablesResult2));
        System.assert(mssqlBakEnumerateTablesResult2.equals(mssqlBakEnumerateTablesResult1));
        System.assert(mssqlBakEnumerateTablesResult3.equals(mssqlBakEnumerateTablesResult4));
        System.assert(mssqlBakEnumerateTablesResult4.equals(mssqlBakEnumerateTablesResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult1 = SwagMssqlBakEnumerateTablesResult.getExample();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult2 = new SwagMssqlBakEnumerateTablesResult();

        System.assertEquals(false, mssqlBakEnumerateTablesResult1.equals(mssqlBakEnumerateTablesResult2));
        System.assertEquals(false, mssqlBakEnumerateTablesResult2.equals(mssqlBakEnumerateTablesResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult1 = SwagMssqlBakEnumerateTablesResult.getExample();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult2 = new SwagMssqlBakEnumerateTablesResult();

        System.assertEquals(false, mssqlBakEnumerateTablesResult1.equals('foo'));
        System.assertEquals(false, mssqlBakEnumerateTablesResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult1 = SwagMssqlBakEnumerateTablesResult.getExample();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult2 = new SwagMssqlBakEnumerateTablesResult();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult3;

        System.assertEquals(false, mssqlBakEnumerateTablesResult1.equals(mssqlBakEnumerateTablesResult3));
        System.assertEquals(false, mssqlBakEnumerateTablesResult2.equals(mssqlBakEnumerateTablesResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult1 = SwagMssqlBakEnumerateTablesResult.getExample();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult2 = new SwagMssqlBakEnumerateTablesResult();

        System.assertEquals(mssqlBakEnumerateTablesResult1.hashCode(), mssqlBakEnumerateTablesResult1.hashCode());
        System.assertEquals(mssqlBakEnumerateTablesResult2.hashCode(), mssqlBakEnumerateTablesResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult1 = SwagMssqlBakEnumerateTablesResult.getExample();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult2 = SwagMssqlBakEnumerateTablesResult.getExample();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult3 = new SwagMssqlBakEnumerateTablesResult();
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult4 = new SwagMssqlBakEnumerateTablesResult();

        System.assert(mssqlBakEnumerateTablesResult1.equals(mssqlBakEnumerateTablesResult2));
        System.assert(mssqlBakEnumerateTablesResult3.equals(mssqlBakEnumerateTablesResult4));
        System.assertEquals(mssqlBakEnumerateTablesResult1.hashCode(), mssqlBakEnumerateTablesResult2.hashCode());
        System.assertEquals(mssqlBakEnumerateTablesResult3.hashCode(), mssqlBakEnumerateTablesResult4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagMssqlBakEnumerateTablesResult mssqlBakEnumerateTablesResult = new SwagMssqlBakEnumerateTablesResult();
        System.assertEquals(new List<SwagMssqlTable>(), mssqlBakEnumerateTablesResult.tables);
        System.assertEquals(null, mssqlBakEnumerateTablesResult.successful);
    }
}
