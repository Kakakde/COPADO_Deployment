trigger avoidduplicateCon on Contact (before insert, before update) {
	if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
    {
        avoidduplicateConHandler.method1(trigger.new);
    }
}