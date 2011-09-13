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
	
	public class VectorCollectionTest
	{		
		public function VectorCollectionTest()
		{
			
		}
		
		
		[Before]
		public function setUp():void
		{
		}
		
		[After]
		public function tearDown():void
		{
			this.vectorCollection = null;
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
		public function testReadExternal():void
		{
			//Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testRemoveItem():void
		{
			var testObj1:Rect = new Rect();
			testObj1.width = 100;
			testObj1.height = 30;
			
			var testObj2:Rect = new Rect();
			testObj2.width = 200;
			testObj2.height = 30;
			
			var testObj3:Rect = new Rect();
			testObj3.width = 300;
			testObj3.height = 30;
			
			this.vectorCollection = new VectorCollection( new Vector.<Rect> );
			this.vectorCollection.addItem(testObj1);
			this.vectorCollection.addItem(testObj2);
			this.vectorCollection.addItem(testObj3);
			
			Assert.assertTrue('Collection Length should be 3', this.vectorCollection.length == 3);
			
			this.vectorCollection.removeItem(testObj2);
			
			Assert.assertTrue('Collection Length should be 2', this.vectorCollection.length == 2);
			Assert.assertObjectEquals('Item 1 should be testObj1', testObj1, this.vectorCollection.getItemAt(0));
			Assert.assertObjectEquals('Item 2 should be testObj3', testObj3, this.vectorCollection.getItemAt(1));
		}
		
		[Test]
		public function testGet_source():void
		{
			this.vectorCollection = new VectorCollection();
			
			Assert.assertObjectEquals('Source does not match the default value', new Vector.<Object>, this.vectorCollection.source);
		}
		
		[Test]
		public function testSet_source():void
		{
			this.vectorCollection = new VectorCollection();
			
			var strVector:Vector.<String> = new Vector.<String>;
			this.vectorCollection.source = strVector;
			Assert.assertStrictlyEquals('Source does not match the set value', strVector, this.vectorCollection.source); 
		}
		
		[Test]
		public function testVectorCollection():void
		{
			this.vectorCollection = new VectorCollection();
		}
		
		[Test]
		public function testWriteExternal():void
		{
			//Assert.fail("Test method Not yet implemented");
		}
		
		
		/* PRIVATE */
		
		private var vectorCollection:VectorCollection = null;
	}
}