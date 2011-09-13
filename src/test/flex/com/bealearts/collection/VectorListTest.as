/**
 *
 * Copywrite (c) 2010, David Beale
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
package com.bealearts.collection
{
	import flexunit.framework.Assert;
	
	import spark.primitives.Rect;
	
	public class VectorListTest
	{		
		public function VectorListTest()
		{
			
		}
		
		
		[Before]
		public function setUp():void
		{

		}
		
		[After]
		public function tearDown():void
		{
			this.vectorList = null;
		}
		
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		
		/* TESTS */
		
		[Test]
		public function testAddItem():void
		{
			var testObj:Object = new Object;
			testObj.name = 'test';
			
			this.vectorList = new VectorList();
			
			this.vectorList.addItem(testObj);
			Assert.assertTrue('Collection Length should be 1', this.vectorList.length == 1);
			Assert.assertObjectEquals('Last item should be testObj', testObj, this.vectorList.getItemAt(this.vectorList.length-1));
			
			this.vectorList.addItem(testObj);
			Assert.assertTrue('Collection Length should be 2', this.vectorList.length == 2);
			Assert.assertObjectEquals('Last item should be testObj', testObj, this.vectorList.getItemAt(this.vectorList.length-1));
			
			this.vectorList.addItem(5);
			Assert.assertTrue('Collection Length should be 3', this.vectorList.length == 3);
			Assert.assertEquals('Last item should be 5', 5, this.vectorList.getItemAt(this.vectorList.length-1));
		}
		
		
		[Test]
		public function testAddItem_typed():void
		{
			var testObj:Rect = new Rect();
			testObj.width = 100;
			testObj.height = 30;
			
			this.vectorList = new VectorList(new Vector.<Rect>);	// Simple typed Vector
			
			this.vectorList.addItem(testObj);
			Assert.assertTrue('Collection Length should be 1', this.vectorList.length == 1);
			Assert.assertObjectEquals('Last item should be testObj', testObj, this.vectorList.getItemAt(this.vectorList.length-1));
		}
		
		
		[Test]
		public function testAddItem_typed_primative():void
		{
			
			this.vectorList = new VectorList(new Vector.<Boolean>);	// Simple typed Vector
			
			this.vectorList.addItem(true);
			Assert.assertTrue('Collection Length should be 1', this.vectorList.length == 1);
			Assert.assertTrue('Last item should be true', this.vectorList.getItemAt(this.vectorList.length-1));
		}		
		
		
		[Test(expects="TypeError")]
		public function testAddItem_wrong_type():void
		{
			var testObj:Rect = new Rect();
			testObj.width = 100;
			testObj.height = 30;
			
			this.vectorList = new VectorList(new Vector.<Rect>);	// Simple typed Vector
			
			this.vectorList.addItem( new Object() ); 	// Should tigger wrong type error
		}	
		
		
		/*
			TODO !!
			
		[Test]
		public function testAddItemAt():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testGetItemAt():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testGetItemIndex():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testIsVector():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testItemUpdated():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testGet_length():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testReadExternal():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testRemoveAll():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testRemoveItem():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testRemoveItemAt():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testSetItemAt():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testGet_source():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testSet_source():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testToArray():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testGet_uid():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testSet_uid():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		*/
		[Test]
		public function testVectorList():void
		{
			this.vectorList = new VectorList();
		}
		/*
		[Test]
		public function testWriteExternal():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		*/
		
		/* PRIVATE */
		
		private var vectorList:VectorList = null;
	}
}