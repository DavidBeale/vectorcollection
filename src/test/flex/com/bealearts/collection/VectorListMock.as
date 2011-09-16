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
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	
	import mx.collections.IList;
	import mx.core.IPropertyChangeNotifier;
	
	public dynamic class VectorListMock extends EventDispatcher implements IList, IExternalizable, IPropertyChangeNotifier
	{
		public var called:Boolean = false;
		
		
		public function VectorListMock(source:Object=null)
		{
			//TODO: implement function
			super();
		}
		
		public function get length():int
		{
			//TODO: implement function
			return 0;
		}
		
		public function addItem(item:Object):void
		{
			//TODO: implement function
		}
		
		public function addItemAt(item:Object, index:int):void
		{
			//TODO: implement function
		}
		
		public function getItemAt(index:int, prefetch:int=0):Object
		{
			//TODO: implement function
			return null;
		}
		
		public function getItemIndex(item:Object):int
		{
			//TODO: implement function
			return 0;
		}
		
		public function itemUpdated(item:Object, property:Object=null, oldValue:Object=null, newValue:Object=null):void
		{
			//TODO: implement function
		}
		
		public function removeAll():void
		{
			//TODO: implement function
		}
		
		
		public function removeItem(item:Object):int
		{
			this.called = true;
			return 0;
		};
		
		public function removeItemAt(index:int):Object
		{
			//TODO: implement function
			return null;
		}
		
		public function setItemAt(item:Object, index:int):Object
		{
			//TODO: implement function
			return null;
		}
		
		public function toArray():Array
		{
			//TODO: implement function
			return null;
		}
		
		
		
		public function writeExternal(output:IDataOutput):void
		{
			this.called = true;
		}
		
		public function readExternal(input:IDataInput):void
		{
			this.called = true;
		}
		
		public function get uid():String
		{
			//TODO: implement function
			return null;
		}
		
		public function set uid(value:String):void
		{
			//TODO: implement function
		}
	}
}