/**
 *
 * Copywrite (c) 2010, David Beale
 *
 */
package com.bealearts.collection
{
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	
	import mx.collections.IList;
	import mx.collections.ListCollectionView;
	
	
	/**
	 * A Vector based Collection
	 * 
	 * <p>Allows one to wrap a Vector inorder to access it using Binding in the same way as an ArrayColletion</p>
	 * <p>Reqires a source Vector on instantiation.</p>
	 * <p>Example usage <code>var someBusinessObjects = new VectorCollection(new Vector.<SomeBusinessObject>);</code></p>
	 * 
	 * @see ArrayCollection
	 * @see Vector
	 */
	[DefaultProperty("source")]
	[Bindable("listChanged")]
	public class VectorCollection extends ListCollectionView implements IExternalizable
	{
		/* PUBLIC */
		
		/**
		 *  The source of data in the VectorCollection.
		 *  The VectorCollection object does not represent any changes that you make
		 *  directly to the source array. Always use the ICollectionView or IList methods to modify the collection.
		 */
		public function get source():Object
		{
			if (this.list && (this.list is VectorList))
				return VectorList(this.list).source;
			else
				return null;
		}

		public function set source(value:Object):void
		{	
			this.list = new VectorList( Vector.<Object>(value) );
		}		
		
		
		
		/**
		 * Constructor
		 */
		public function VectorCollection(source:Object)
		{
			super();
			
			this.source = source;
		}
		
		
		/**
		 *  Ensures that only the source property is serialized.
		 */
		public function readExternal(input:IDataInput):void
		{
			if (this.list is IExternalizable)
				IExternalizable(this.list).readExternal(input);
			else
				this.source = input.readObject() as Vector.<Object>;
		}
		
		/**
		 *  Ensures that only the source property is serialized.
		 */
		public function writeExternal(output:IDataOutput):void
		{
			if (this.list is IExternalizable)
				IExternalizable(this.list).writeExternal(output);
			else
				output.writeObject(this.source);
		}
		
		/* PROTECTED */
		
		/* PRIVATE */
	}
}