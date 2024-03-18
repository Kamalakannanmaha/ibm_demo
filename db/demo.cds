namespace com.ibm;

using {demo.reuse as spiderman} from './reuse';
using {
    cuid,
    managed,
    temporal
} from '@sap/cds/common';

context demo {

    entity Student: spiderman.address {
        key id        : spiderman.Guid;
            firstName : String(80);
            lastName  : String(80);
            grade     : Association to one Class;
            gender    : String(1);
    }

    entity Class {
        key id             : Int16;
            className      : String(80);
            semester       : Int16;
            specialization : String(60);

    }

    entity book {
        key id       : spiderman.Guid;
            bookName : String(80);
            author   : String(80);
    }
}

context trans {

entity subs: cuid, temporal, managed {
//key id: spiderman.Guid;
student: Association to one demo.Student;
book: Association to one demo.book;
}
}