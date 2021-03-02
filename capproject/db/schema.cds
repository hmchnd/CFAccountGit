namespace my.bookshop;

using {cuid,managed} from '@sap/cds/common';

entity Books :managed {
@Core.Immutable @mandatory key   ID : Integer  @assert.range: [ 0, 83 ];
  @mandatory title  : String   @assert.range enum { high; medium; low; } not null;
 @mandatory stock  : Integer  not null;
}




