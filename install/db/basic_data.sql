--
-- Data for Table `ext_contact_person`
--

INSERT INTO `ext_contact_person` (`id`, `date_create`, `date_update`, `id_person_create`, `deleted`, `username`, `password`, `email`, `is_admin`, `active`, `firstname`, `lastname`, `shortname`, `gender`, `title`, `birthday`) VALUES
(1, 1246615200, 1264780312, 0, 0, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'demo@todoyu.com', 1, 1, 'Bob', 'Thingummy', 'BOTH', 'm', '', '1966-10-05');

--
-- Data for Table `ext_contact_contactinfotype`
--

INSERT INTO `ext_contact_contactinfotype` (`id`, `deleted`, `category`, `key`, `title`) VALUES
(1, 0, 1, 'email_business', 'LLL:contact.contactinfo.type.email_business'),
(2, 0, 2, 'tel_private', 'LLL:contact.contactinfo.type.tel_private'),
(3, 0, 2, 'tel_exchange', 'LLL:contact.contactinfo.type.tel_exchange'),
(4, 0, 2, 'tel_business', 'LLL:contact.contactinfo.type.tel_business'),
(5, 0, 1, 'email_private', 'LLL:contact.contactinfo.type.email_private'),
(6, 0, 2, 'mobile_business', 'LLL:contact.contactinfo.type.mobile_business'),
(7, 0, 2, 'fax_private', 'LLL:contact.contactinfo.type.fax_private'),
(8, 0, 2, 'fax_business', 'LLL:contact.contactinfo.type.fax_business'),
(9, 0, 2, 'mobile_private', 'LLL:contact.contactinfo.type.mobile_private'),
(10, 0, 2, 'fax_exchange', 'LLL:contact.contactinfo.type.fax_exchange'),
(11, 0, 3, 'website', 'LLL:contact.contactinfo.type.website'),
(12, 0, 3, 'skype', 'LLL:contact.contactinfo.type.skype');

--
-- Data for Table `system_role`
--

INSERT INTO `system_role` (`id`, `date_create`, `date_update`, `id_person_create`, `deleted`, `title`, `is_active`, `description`) VALUES
(1, 1264761659, 0, 1, 0, 'Customers', 1, 'Customers with todoyu access'),
(2, 1264762106, 0, 1, 0, 'Project managers', 1, ''),
(4, 1264762153, 0, 1, 0, 'Employees', 1, 'Members of staff');

--
-- Data for Table `system_right`
--

INSERT INTO `system_right` (`id`, `ext`, `right`, `id_role`) VALUES
(1, 103, 'general:use', 4),
(2, 103, 'task:add', 4),
(4, 103, 'panelwidgets:taskbookmarks', 4),
(7, 107, 'general:use', 5),
(11, 115, 'filtersets:hideAll', 4),
(12, 115, 'filtersets:deleteAll', 4),
(13, 115, 'filtersets:hideAll', 5),
(14, 119, 'task:seeTaskTab', 5),
(15, 119, 'task:track', 4),
(16, 119, 'task:track', 5),
(17, 119, 'general:use', 4),
(18, 119, 'general:use', 5),
(19, 120, 'general:use', 5),
(20, 120, 'general:usermanager', 5),
(21, 120, 'user:add', 5),
(22, 120, 'user:edit', 5),
(23, 120, 'user:delete', 5),
(24, 120, 'user:assignGroups', 5),
(25, 120, 'group:add', 5),
(26, 120, 'group:edit', 5),
(27, 120, 'group:delete', 5),
(28, 120, 'group:assignUsers', 5),
(29, 100, 'general:use', 5),
(30, 100, 'panelwidgets:adminmodules', 5),
(31, 107, 'panelwidgets:daytracks', 4),
(32, 107, 'daytracks:showHistory', 5),
(33, 107, 'daytracks:showHistory', 4),
(104, 106, 'general:use', 1),
(35, 115, 'panelwidgets:searchFilterList', 4),
(36, 115, 'panelwidgets:searchFilterList', 5),
(37, 115, 'filtersets:save', 4),
(38, 115, 'filtersets:deleteAll', 5),
(39, 115, 'filtersets:save', 5),
(40, 118, 'general:extensions', 5),
(41, 118, 'general:allrecords', 5),
(42, 118, 'extensions:info', 5),
(43, 118, 'extensions:config', 5),
(44, 118, 'extensions:rights', 5),
(45, 118, 'extensions:records', 5),
(46, 118, 'extensions:install', 5),
(47, 118, 'extensions:uninstall', 5),
(48, 118, 'extensions:update', 5),
(49, 118, 'extensions:download', 5),
(50, 119, 'task:seeTaskTab', 4),
(51, 119, 'task:seeTracks', 5),
(52, 119, 'task:seeTracks', 4),
(53, 119, 'task:editOwn', 5),
(54, 119, 'task:editOwn', 4),
(55, 119, 'task:editAll', 5),
(101, 126, 'settings:password', 1),
(99, 126, 'general:use', 1),
(60, 115, 'filtersets:renameAll', 4),
(61, 115, 'general:headlet', 4),
(62, 115, 'general:headlet', 1),
(63, 115, 'general:headlet', 5),
(64, 101, 'general:use', 1),
(102, 104, 'general:use', 1),
(98, 105, 'comment:sendAsEmail', 1),
(97, 105, 'comment:requestFeedback', 1),
(96, 105, 'general:use', 1),
(72, 111, 'general:use', 1),
(74, 115, 'filtersets:renameAll', 5),
(75, 115, 'general:use', 4),
(76, 115, 'general:use', 1),
(77, 115, 'general:use', 5),
(78, 112, 'projectstatus:warranty:see', 1),
(79, 112, 'projectstatus:cleared:see', 1),
(80, 112, 'projectstatus:done:see', 1),
(81, 112, 'projectstatus:progress:see', 1),
(82, 112, 'projectstatus:planning:see', 1),
(83, 112, 'taskstatus:customer:see', 1),
(84, 112, 'taskstatus:cleared:see', 1),
(85, 112, 'taskstatus:rejected:see', 1),
(86, 112, 'taskstatus:accepted:see', 1),
(87, 112, 'taskstatus:done:see', 1),
(88, 112, 'taskstatus:confirm:see', 1),
(89, 112, 'taskstatus:progress:see', 1),
(90, 112, 'taskstatus:open:see', 1),
(91, 112, 'taskstatus:planning:see', 1),
(92, 112, 'task:addInOwnProjects', 1),
(93, 112, 'project:seeOwn', 1),
(94, 112, 'general:use', 1),
(95, 115, 'panelwidgets:searchFilterList', 1);
