/datum/unit_test/reactions/Run()
	for(var/datum/gas_reaction/G in SSair.gas_reactions)
		if(!G.exclude)
			var/test_info = G.test()
			if(!test_info["success"])
				var/message = test_info["message"]
				TEST_FAIL("Gas reaction [G.name] is failing its unit test with the following message: [message]")
