using my.bookshop as my from '../db/schema';

service CatalogService {
    entity Books as select from my.Books order by ID;
}

