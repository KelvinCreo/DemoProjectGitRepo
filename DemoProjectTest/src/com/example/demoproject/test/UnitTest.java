package com.example.demoproject.test;

import android.test.ActivityInstrumentationTestCase2;
import com.example.demoproject.MainActivity;

public class UnitTest extends ActivityInstrumentationTestCase2<com.example.demoproject.MainActivity> {

	MainActivity mainActivity;
	
	public UnitTest() {
		super(MainActivity.class);
	}

	protected void setUp() throws Exception {
		super.setUp();
		mainActivity = getActivity();
	}

	protected void tearDown() throws Exception {
		super.tearDown();
	}

	public void testAddNumbers()
	{
		assertEquals(mainActivity.addNumbers(2, 1), 4);
	}
}
