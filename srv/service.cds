using { universitymanagement as un } from '../db/schema.cds';


service UniversitySrv @(path: '/service/UniversityApp')
@(requires: 'authenticated-user')
{
  @Capabilities : { Insertable,Updatable,Deletable, }
  @odata.draft.enabled
  entity School as projection on un.School;
  entity Student as projection on un.Student;
}