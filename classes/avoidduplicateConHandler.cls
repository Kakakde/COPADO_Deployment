public class avoidduplicateConHandler {
	public static void method1(List<Contact> conList)
    {
        // Create a set to hold unique email and phone combinations
    Set<String> emailAndPhoneSet = new Set<String>();
    
    // Loop through the Contacts being inserted or updated
    for (Contact c : conList) {
        String emailAndPhone = c.Email + c.Phone;
        
        // Check if the email and phone combination already exists
        if (emailAndPhoneSet.contains(emailAndPhone)) {
            c.addError('This contact already exists based on Email and Phone.');
        }
        else {
            emailAndPhoneSet.add(emailAndPhone);
        }
    }
}
}