/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an org are executed whenever Apex code is deployed
 * to a production org to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production org. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the org size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class UserBuilder_Test {

    @isTest
    static void itShouldUpdate() {
        // TO DO: implement unit test
        User user = new UserDirector().build(new UserBuilder.Admin());
        System.runAs(user){
            Account account = new Account (Name = 'Test Account', Admin_Only__c = true);
            System.assert(Schema.SObjectType.account.fields.Admin_Only__c.isAccessible () == true,
            'This field should be accessible');
        }
    }
    @isTest
    static void itShouldNotUpdate() {
    User user = new UserDirector().build(new UserBuilder.Standard());
        System.runAs(user){
            Account account = new Account (Name = 'Test Account', Admin_Only__c = true);
            System.assert(Schema.SObjectType.account.fields.Admin_Only__c.isAccessible () == false,
            'This field should be accessible');
        }
}

}