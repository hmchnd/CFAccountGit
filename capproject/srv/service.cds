using my.bookshop as my from '../db/schema';

service CatalogService {
    @Capabilities.Deletable:false
    
    entity Books as projection on my.Books;


}

