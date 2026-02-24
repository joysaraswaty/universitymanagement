using { universitymanagement as un } from '../db/schema.cds';

@path: '/service/UniversityApp'
@requires: 'authenticated-user'
service UniversitySrv {
  @Capabilities : { Insertable,Updatable,Deletable, }
  @odata.draft.enabled
  entity School as projection on un.School;
  entity Student as projection on un.Student;
}