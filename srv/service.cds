using { universitymanagement as un } from '../db/schema.cds';


service UniversitySrv @(path: '/service/UniversityApp')
@(requires: 'authenticated-user')
{
  @Capabilities : { Insertable,Updatable,Deletable, }
  @odata.draft.enabled
  entity School @(restrict:[
        {
            grant: ['READ'],
            to: 'universityViewer',
        },
        {
            grant: ['WRITE'],
            to: 'universityAdmin'
        }
    ])    
  as projection on un.School;
  entity Student @(restrict:[
        {
            grant: ['READ'],
            to: 'universityViewer',
        },
        {
            grant: ['WRITE'],
            to: 'universityAdmin'
        }
    ])    
  as projection on un.Student;
}