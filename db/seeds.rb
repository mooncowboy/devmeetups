# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if !AdminUser.any?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') 
end


cities = City.create([{ name: 'Lisbon' }, 
  { name: 'Berlin'}, { name: 'Madrid' }, { name: 'Barcelona'}, { name: 'Oporto'},
  { name: 'Braga' }, { name: 'Paris'}, { name: 'London' }, { name: 'Budapest' } ]) unless City.any?

tags = ActsAsTaggableOn::Tag.create([ { name: 'node.js' }, { name: 'go' }, { name: 'docker' }, 
  { name: 'ruby' }, { name: 'c#'}, { name: 'python'}, { name: 'javascript'}, { name: 'java'},
  { name: 'php' }, { name: 'c++'}, { name: 'iOS'}, { name: 'Android'}, { name: 'clojure' },
  { name: 'rust'}, { name: 'react' }, { name: 'aws'} ]) unless ActsAsTaggableOn::Tag.any?

meetups = Meetup.create([
  { 
      name: 'Lisbon MongoDB User Group',
      description: '<p><span>The Lisbon MongoDB User Group&nbsp;is a place for developers and DB admins to learn more about the non-relational, open source, document-oriented database</span> <span><a href=http://www.mongodb.org>MongoDB</a></span><span>.</span></p>
<p><span>MongoDB</span> <span>is the leading NoSQL database and many of the key committers often travel to Europe. So if you are facing challenges with MySQL, Postgres or Oracle, and would like to explore a more flexible, scalable alternative, please join us at one of our friendly, periodical sessions in Lisbon.</span></p>',
      link: 'http://www.meetup.com/Lisbon-MongoDB-User-Group/', 
      external_id: '4693272',
      external_image: 'http://photos3.meetupstatic.com/photos/event/3/f/2/c/highres_408496172.jpeg',
      source_site: 1, 
      disabled: false,
      tag_list: 'MongoDB'
  }, 
  { 
      name: 'phplx',
      description: '<p><strong>Our main goal is to organize monthly meetups about PHP and help the Lisbon PHP community grow. These meetups are targeted to professionals that want to learn, share ideas and/or experiences.</strong></p>
<p><br>

 Come and meet us to stay up to date about the lastest in php, tools, including related topics and to meet new people.</p>', 
      link: 'http://www.meetup.com/php-lx/',
      external_id: '6136482',
      external_image: 'http://phplx.net/img/logos/phplx-576x576.png',
      source_site: 1, 
      disabled: false,
      tag_list: 'php'
  }, 
  { 
      name: 'Internet of Things Lisboa',
      description: '<p>A Internet das coisas visa um mundo cheio de conectividade em tempo real entre diferentes máquinas (M2M), e pessoas e os seus artefactos digitais.<br>

 O grupo <strong>IoT Lisboa</strong> tem como objetivo investigar e promover o que este novo paradigma representa para as <strong>PESSOAS</strong>, e que tipo de novas startups irão mediar esta nova inteligência de coisas interligadas.<br>

 Este não é um hacker space ou um laboratório de experimentação, mas sim um meetup sobre os futuros produtos e modelos sociais e de negócio associados. Este grupo é para as organizações, empreendedores, inovadores, investigadores, líderes, designers e engenheiros, nós estamos abertos a um espectro diversificado de pessoas.</p>
<p> </p>
<p><em>The Internet of Things aims at a real-time world full of connectivity of machine to machine (M2M) and machine to people. The <strong>IoT Lisbon</strong> group aims to investigate what this new paradigm represents for <strong>PEOPLE</strong>, and what kind of new businesses will mediate this new intelligence of inter-connected things. This is not a hackers space or an experimentation lab, but a meetup focused on the future business and social models of IoT.</em><br>

 <em>This group is for organizations, entrepreneurs, innovators, researchers, leaders, designers and developers, we are looking to engage a diverse spectrum of people.</em></p>
<p> </p>
<p> </p>', 
      link: 'http://www.meetup.com/IoT-Lisboa/',
      external_id: '7619942',
      external_image: 'http://photos2.meetupstatic.com/photos/event/8/2/7/0/highres_223473392.jpeg',
      source_site: 1, 
      disabled: false,
      tag_list: 'IoT'
  }, 
  { 
      name: 'require(\'lx\')',
      description: '<p>A meetup group for JavaScript developers, lovers, enthusiasts and explorers in Lisbon. Server-side and client-side. Talks and code shows, some day even hackathons.</p>', 
      link: 'http://www.meetup.com/require-lx/',
      external_id: '9394682',
      external_image: 'http://photos2.meetupstatic.com/photos/event/d/a/0/e/thumb_323635822.jpeg',
      source_site: 1, 
      disabled: false,
      tag_list: 'javascript, react, node.js'
  }, 
  { 
      name: 'iOS Dev Portugal',
      description: '<p>O iOS Dev Portugal é um grupo que tem por objetivo dar a conhecer tudo o que se faz no mundo do iOS em Portugal e por portugueses, promovendo o diálogo entre Programadores, Designers de Interface e Empreendedores de Tecnologias Movéis.<br><br>Serão abordados tópicos sobre os mais diversos fatores na área de desenvolvimento de aplicações para aparelhos que suportem o iOS.</p><p><br>Irão também aqui ser anúnicados todos os eventos, encontros e conferências que se vão realizando.<br><br>Convido todos a participar e a colaborar com o iOS Dev Portugal para assim termos um grupo grande e vasto de potencial profissional Luso.</p>', 
      link: 'http://www.meetup.com/iOS-Dev-Portugal/',
      external_id: '10063062',
      external_image: 'http://photos3.meetupstatic.com/photos/event/5/e/1/c/thumb_278544092.jpeg',
      source_site: 1, 
      disabled: false,
      tag_list: 'iOS, objective-c'
  }, 
  { 
      name: 'XPlat | Using Microsoft Tools for Cross-Platform Development',
      description: '<p>Develop once, Deploy everywhere is a dream that has been around for some time. However, and even though some tools appeared through time, we\'re not there yet. The main objective of this User Group is to promote a shared understanding about Microsoft\'s tools focused on Cross-Platform development and also other companies that focus in the same topic and use technologies with Visual Studio, like Xamarin.</p>', 
      link: 'http://www.meetup.com/XPlat-Using-Microsoft-Tools-for-Cross-Platform-Development/',
      external_id: '15646492',
      external_image: 'http://photos1.meetupstatic.com/photos/event/3/f/1/8/thumb_387616152.jpeg',
      source_site: 1, 
      disabled: false,
      tag_list: 'c#'
  }, 
  { 
      name: 'Docker Lisbon',
      description: '<p>Meet other developers and ops engineers using Docker. Docker is an open platform for developers and sysadmins to build, ship, and run distributed applications. Consisting of Docker Engine, a portable, lightweight runtime and packaging tool, and Docker Hub, a cloud service for sharing applications and automating workflows, Docker enables apps to be quickly assembled from components and eliminates the friction between development, QA, and production environments. As a result, IT can ship faster and run the same app, unchanged, on laptops, data center VMs, and any cloud.</p>
<p>Learn more about Docker at <a href=http://www.docker.com/>http://www.docker.com</a></p>', 
      link: 'http://www.meetup.com/DockerLisbon/',
      external_id: '12161942',
      external_image: 'http://photos4.meetupstatic.com/photos/event/3/5/9/0/thumb_345793712.jpeg',
      source_site: 1, 
      disabled: false,
      tag_list: 'docker, devops, cloud'
  }, 
  { 
      name: 'Merge Lisbon',
      description: '<p>Merge is an event in Lisbon bringing together developers, designers and everyone interested in modern ways of building awesome stuff for the web. From programming to interaction design and different organization models like holacracy, we\'re all about sharing and having a great time.&nbsp;</p>
<p>Created by <a href=http://kwan.pt>KWAN</a> / <a href=http://www.rupeal.com>RUPEAL</a>.</p>
<p>Get in touch.&nbsp;<a href=mailto:community@kwan.pt>community@kwan.pt</a></p>
<p><a href=http://mergelisbon.com>http://mergelisbon.com</a>.&nbsp;</p>
<p> <br> </p>', 
      link: 'http://www.meetup.com/Merge-Lisbon/',
      external_id: '16339652',
      external_image: 'http://photos2.meetupstatic.com/photos/event/5/7/9/6/thumb_397882422.jpeg',
      source_site: 1, 
      disabled: false,
      tag_list: 'non-specific'
  } 
]) unless Meetup.any?
