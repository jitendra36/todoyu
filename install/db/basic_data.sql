--
-- Data for Table `ext_contact_person`
--

INSERT INTO `ext_contact_person` (`id`, `date_create`, `date_update`, `id_person_create`, `deleted`, `username`, `password`, `email`, `is_admin`, `is_active`, `firstname`, `lastname`, `shortname`, `salutation`, `title`, `birthday`) VALUES
(1, 1246615200, 1264780312, 0, 0, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 'demo@todoyu.com', 1, 1, 'Adam', 'Admin', 'ALAD', 'm', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Data for Table `ext_contact_company`
--

INSERT INTO `ext_contact_company` (`id`, `date_create`, `date_update`, `id_person_create`, `deleted`, `title`, `shortname`, `date_enter`, `is_internal`) VALUES
(1, 1264696524, 1269509610, 1, 0, 'snowflake productions GmbH ', 'sfp', 1259622000, 1);

-- --------------------------------------------------------

--
-- Data for Table `ext_contact_mm_company_person`
--

INSERT INTO `ext_contact_mm_company_person` (`id`, `id_company`, `id_person`, `id_workaddress`, `id_jobtype`) VALUES
(1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Data for Table `ext_contact_contactinfotype`
--

INSERT INTO `ext_contact_contactinfotype` (`id`, `date_create`, `date_update`, `id_person_create`, `deleted`, `category`, `key`, `title`, `is_public`) VALUES
(1, 0, 0, 0, 0, 1, 'email_business', 'LLL:contact.ext.contactinfo.type.email_business', 1),
(2, 0, 0, 0, 0, 2, 'tel_private', 'LLL:contact.ext.contactinfo.type.tel_private', 0),
(3, 0, 0, 0, 0, 2, 'tel_exchange', 'LLL:contact.ext.contactinfo.type.tel_exchange', 1),
(4, 0, 0, 0, 0, 2, 'tel_business', 'LLL:contact.ext.contactinfo.type.tel_business', 1),
(5, 0, 0, 0, 0, 1, 'email_private', 'LLL:contact.ext.contactinfo.type.email_private', 0),
(6, 0, 0, 0, 0, 2, 'mobile_business', 'LLL:contact.ext.contactinfo.type.mobile_business', 1),
(7, 0, 0, 0, 0, 2, 'fax_private', 'LLL:contact.ext.contactinfo.type.fax_private', 0),
(8, 0, 0, 0, 0, 2, 'fax_business', 'LLL:contact.ext.contactinfo.type.fax_business', 1),
(9, 0, 0, 0, 0, 2, 'mobile_private', 'LLL:contact.ext.contactinfo.type.mobile_private', 0),
(10, 0, 0, 0, 0, 2, 'fax_exchange', 'LLL:contact.ext.contactinfo.type.fax_exchange', 1),
(11, 0, 0, 0, 0, 3, 'website', 'LLL:contact.ext.contactinfo.type.website', 1),
(12, 0, 0, 0, 0, 3, 'skype', 'LLL:contact.ext.contactinfo.type.skype', 0);

-- --------------------------------------------------------

--
-- Data for Table `system_role`
--

INSERT INTO `system_role` (`id`, `date_create`, `date_update`, `id_person_create`, `deleted`, `title`, `is_active`, `description`) VALUES
(1, 1264761659, 0, 1, 0, 'Customers', 1, 'Customers with todoyu access'),
(2, 1264762106, 0, 1, 0, 'Project Managers', 1, ''),
(3, 1264762153, 0, 1, 0, 'Staff', 1, 'Executive members of staff');

-- --------------------------------------------------------

--
-- Data for Table `system_right`
--

INSERT INTO `system_right` (`id`, `ext`, `right`, `id_role`) VALUES
(1, 106, 'person:editAndDeleteAll', 2),
(2, 119, 'task:track', 2),
(3, 104, 'event:deleteAssigned', 3),
(497, 112, 'edittaskdetail:cleared:changefrom', 3),
(494, 112, 'edittaskdetail:done:changefrom', 3),
(7, 101, 'general:use', 2),
(8, 119, 'task:editOwn', 2),
(432, 105, 'comment:deleteOwn', 3),
(10, 111, 'general:use', 3),
(11, 101, 'asset:seeAll', 2),
(12, 106, 'relation:seeHomeAddress', 2),
(13, 101, 'asset:delete', 2),
(14, 101, 'general:use', 3),
(15, 104, 'event:editAssigned', 2),
(16, 112, 'edittask:useTaskAndContainerClipboard', 2),
(17, 103, 'general:use', 3),
(18, 103, 'general:use', 2),
(19, 103, 'general:use', 1),
(20, 104, 'event:editAll', 2),
(21, 104, 'event:editAll', 3),
(22, 104, 'event:editAssigned', 3),
(23, 105, 'comment:requestFeedback', 1),
(425, 105, 'comment:sendAsEmail', 2),
(25, 106, 'company:editComment', 3),
(26, 106, 'person:add', 2),
(27, 106, 'person:editAndDeleteAll', 3),
(28, 107, 'daytracks:timeExportAllPerson', 2),
(29, 111, 'general:use', 2),
(30, 111, 'general:use', 1),
(31, 126, 'settings:password', 2),
(32, 112, 'edittaskdetail:planning:changeto', 2),
(33, 126, 'general:use', 3),
(34, 126, 'general:use', 1),
(35, 126, 'settings:password', 3),
(36, 126, 'general:use', 2),
(37, 126, 'settings:password', 1),
(493, 112, 'edittaskdetail:confirm:changefrom', 3),
(40, 112, 'edittask:cleared:edit', 2),
(41, 112, 'edittask:accepted:edit', 2),
(43, 112, 'edittask:rejected:edit', 2),
(492, 112, 'edittaskdetail:progress:changefrom', 3),
(45, 112, 'edittask:confirm:edit', 2),
(47, 112, 'edittask:done:edit', 2),
(491, 112, 'edittaskdetail:open:changefrom', 3),
(49, 112, 'edittask:progress:edit', 2),
(50, 115, 'general:area', 3),
(51, 115, 'filtersets:save', 2),
(52, 115, 'general:area', 1),
(53, 115, 'general:area', 2),
(54, 115, 'general:use', 3),
(55, 115, 'general:use', 1),
(56, 115, 'general:use', 2),
(514, 119, 'task:editOwn', 3),
(513, 119, 'task:track', 3),
(490, 112, 'edittaskdetail:planning:changefrom', 3),
(61, 112, 'edittask:open:edit', 2),
(63, 112, 'edittask:planning:edit', 2),
(489, 112, 'edittaskdetail:editIsPublic', 3),
(65, 101, 'asset:seeAll', 3),
(66, 101, 'general:use', 1),
(67, 104, 'event:seeAll', 2),
(68, 104, 'event:add', 3),
(69, 104, 'event:add', 2),
(71, 105, 'comment:editOwn', 1),
(431, 105, 'comment:sendAsEmail', 3),
(74, 106, 'company:seeComment', 2),
(75, 106, 'person:seeAllPersons', 2),
(76, 106, 'person:add', 3),
(77, 106, 'person:seeAllPersons', 3),
(78, 107, 'daytracks:timeExportAllEmployer', 2),
(79, 107, 'daytracks:timeExport', 2),
(80, 112, 'edittaskdetail:cleared:changefrom', 2),
(488, 112, 'edittaskdetail:editEstimatedWorkload', 3),
(487, 112, 'edittaskdetail:editActivity', 3),
(83, 112, 'edittask:editContainerInAllProjects', 2),
(84, 112, 'edittask:editContainerInOwnProjects', 2),
(486, 112, 'edittaskdetail:editPersonOwner', 3),
(86, 112, 'edittask:editOwnContainers', 2),
(485, 112, 'edittaskdetail:editPersonAssigned', 3),
(88, 112, 'edittask:editTaskInAllProjects', 2),
(484, 112, 'edittaskdetail:editDeadline', 3),
(482, 112, 'edittaskdetail:editDateStart', 3),
(483, 112, 'edittaskdetail:editDateEnd', 3),
(94, 112, 'edittask:editTaskInOwnProjects', 2),
(95, 112, 'addtask:cleared:create', 2),
(481, 112, 'edittask:useTaskAndContainerClipboard', 3),
(97, 112, 'edittask:editOwnTasks', 2),
(98, 112, 'addtask:rejected:create', 2),
(480, 112, 'edittask:cleared:edit', 3),
(100, 112, 'addtask:accepted:create', 2),
(102, 113, 'statuschange:firstreminder', 3),
(103, 113, 'statuschange:invoiced', 3),
(104, 113, 'statussee:paid', 3),
(105, 113, 'statussee:canceled', 3),
(106, 113, 'statussee:depreciated', 3),
(107, 113, 'statussee:encashment', 3),
(108, 113, 'statussee:thirdreminder', 3),
(109, 113, 'statussee:finalreminder', 3),
(110, 113, 'statussee:secondreminder', 3),
(111, 113, 'statussee:firstreminder', 3),
(112, 115, 'filtersets:save', 1),
(113, 115, 'filtersets:save', 3),
(114, 115, 'filtersets:deleteAll', 2),
(115, 115, 'filtersets:deleteAll', 1),
(116, 115, 'filtersets:deleteAll', 3),
(117, 115, 'filtersets:hideAll', 2),
(118, 115, 'filtersets:hideAll', 1),
(119, 115, 'filtersets:hideAll', 3),
(120, 115, 'filtersets:renameAll', 2),
(121, 115, 'filtersets:renameAll', 1),
(122, 115, 'filtersets:renameAll', 3),
(123, 119, 'general:use', 2),
(512, 119, 'general:use', 3),
(496, 112, 'edittaskdetail:rejected:changefrom', 3),
(479, 112, 'edittask:rejected:edit', 3),
(127, 112, 'addtask:done:create', 2),
(477, 112, 'edittask:done:edit', 3),
(478, 112, 'edittask:accepted:edit', 3),
(130, 112, 'addtask:confirm:create', 2),
(132, 112, 'addtask:progress:create', 2),
(476, 112, 'edittask:confirm:edit', 3),
(475, 112, 'edittask:progress:edit', 3),
(137, 112, 'addtask:open:create', 2),
(138, 104, 'event:seeAll', 3),
(474, 112, 'edittask:open:edit', 3),
(140, 112, 'addtask:planning:create', 2),
(495, 112, 'edittaskdetail:accepted:changefrom', 3),
(142, 101, 'asset:delete', 3),
(430, 105, 'comment:requestFeedback', 3),
(424, 105, 'comment:requestFeedback', 2),
(145, 112, 'edittaskdetail:open:changefrom', 2),
(473, 112, 'edittask:planning:edit', 3),
(147, 112, 'addtask:addContainerInAllProjects', 2),
(148, 112, 'addtask:addContainerInOwnProjects', 2),
(472, 112, 'edittask:editContainerInAllProjects', 3),
(151, 112, 'addtask:addTaskInAllProjects', 2),
(433, 105, 'comment:makePublic', 3),
(154, 112, 'addtask:addViaQuickCreateHeadlet', 2),
(471, 112, 'edittask:editContainerInOwnProjects', 3),
(470, 112, 'edittask:editOwnContainers', 3),
(157, 112, 'addtask:addTaskInOwnProjects', 2),
(426, 105, 'comment:makePublic', 2),
(469, 112, 'edittask:editTaskInAllProjects', 3),
(162, 112, 'seetask:cleared:see', 2),
(420, 112, 'edittaskdetail:rejected:changeto', 1),
(164, 112, 'seetask:rejected:see', 2),
(165, 112, 'seetask:accepted:see', 2),
(168, 112, 'seetask:done:see', 2),
(419, 112, 'edittaskdetail:accepted:changeto', 1),
(468, 112, 'edittask:editTaskInOwnProjects', 3),
(418, 112, 'edittaskdetail:done:changefrom', 1),
(172, 112, 'edittaskdetail:planning:changefrom', 2),
(173, 112, 'seetask:confirm:see', 2),
(176, 112, 'seetask:progress:see', 2),
(417, 112, 'edittaskdetail:confirm:changefrom', 1),
(467, 112, 'edittask:editOwnTasks', 3),
(179, 112, 'edittaskdetail:rejected:changefrom', 2),
(416, 112, 'edittask:editTaskInOwnProjects', 1),
(466, 112, 'addtask:cleared:create', 3),
(184, 112, 'seetask:open:see', 2),
(185, 112, 'seetask:planning:see', 2),
(465, 112, 'addtask:rejected:create', 3),
(187, 112, 'seetask:seeAll', 2),
(464, 112, 'addtask:accepted:create', 3),
(190, 113, 'statussee:invoiced', 3),
(191, 113, 'statussee:approved', 3),
(192, 113, 'statussee:provisional', 3),
(193, 131, 'general:use', 2),
(194, 132, 'general:use', 2),
(195, 112, 'edittaskdetail:editIsPublic', 2),
(196, 113, 'task:infos', 3),
(197, 113, 'task:icons', 3),
(198, 113, 'project:documents', 3),
(199, 113, 'project:infos', 3),
(200, 113, 'project:approvalroles', 3),
(201, 113, 'tab:invoices', 3),
(202, 113, 'tab:billing', 3),
(203, 113, 'general:area', 3),
(204, 113, 'general:use', 3),
(205, 113, 'statuschange:canceled', 3),
(206, 113, 'workflow:approve', 3),
(207, 113, 'workflow:reopen', 3),
(208, 113, 'workflow:download', 3),
(209, 132, 'general:use', 3),
(463, 112, 'addtask:done:create', 3),
(415, 112, 'edittask:editOwnTasks', 1),
(212, 119, 'task:editAllChargeable', 2),
(213, 119, 'task:editOwnChargeable', 2),
(214, 106, 'relation:seeHomeAddress', 3),
(215, 112, 'edittaskdetail:accepted:changefrom', 2),
(500, 112, 'edittaskdetail:progress:changeto', 3),
(217, 104, 'event:deleteAll', 2),
(218, 104, 'event:deleteAll', 3),
(462, 112, 'addtask:confirm:create', 3),
(221, 106, 'relation:seeAllContactinfotypes', 2),
(461, 112, 'addtask:progress:create', 3),
(223, 112, 'project:editAndDelete', 2),
(460, 112, 'addtask:open:create', 3),
(225, 112, 'edittaskdetail:editEstimatedWorkload', 2),
(459, 112, 'addtask:planning:create', 3),
(227, 112, 'edittaskdetail:done:changefrom', 2),
(229, 112, 'project:add', 2),
(458, 112, 'addtask:addContainerInAllProjects', 3),
(414, 112, 'addtask:addTaskInOwnProjects', 1),
(232, 112, 'project:warranty:see', 2),
(233, 106, 'relation:seeAllContactinfotypes', 3),
(234, 106, 'company:editComment', 2),
(235, 106, 'company:seeComment', 3),
(236, 106, 'company:editAndDeleteAll', 2),
(423, 105, 'comment:editOwn', 2),
(429, 105, 'comment:editOwn', 3),
(413, 112, 'seetask:cleared:see', 1),
(242, 112, 'edittaskdetail:confirm:changefrom', 2),
(412, 112, 'seetask:rejected:see', 1),
(245, 112, 'edittaskdetail:progress:changefrom', 2),
(246, 104, 'event:deleteAssigned', 2),
(499, 112, 'edittaskdetail:open:changeto', 3),
(248, 106, 'company:editOwn', 2),
(249, 106, 'company:editOwn', 3),
(250, 106, 'company:add', 2),
(251, 106, 'company:add', 3),
(252, 106, 'company:seeAllCompanies', 2),
(253, 106, 'company:seeAllCompanies', 3),
(254, 106, 'person:editComment', 2),
(255, 106, 'person:editComment', 3),
(256, 106, 'person:seeComment', 2),
(257, 106, 'person:seeComment', 3),
(258, 106, 'person:enableLogin', 2),
(259, 112, 'edittaskdetail:editActivity', 2),
(457, 112, 'addtask:addContainerInOwnProjects', 3),
(261, 112, 'edittaskdetail:editPersonOwner', 2),
(456, 112, 'addtask:addTaskInAllProjects', 3),
(263, 112, 'edittaskdetail:editPersonAssigned', 2),
(411, 112, 'seetask:accepted:see', 1),
(266, 112, 'edittaskdetail:editDeadline', 2),
(455, 112, 'addtask:addViaQuickCreateHeadlet', 3),
(410, 112, 'seetask:done:see', 1),
(269, 112, 'edittaskdetail:editDateEnd', 2),
(409, 112, 'seetask:confirm:see', 1),
(272, 112, 'edittaskdetail:editDateStart', 2),
(273, 104, 'general:area', 2),
(274, 104, 'general:area', 3),
(275, 104, 'general:use', 2),
(276, 106, 'person:seeAllInternalPersons', 2),
(277, 106, 'person:seeAllInternalPersons', 3),
(279, 106, 'general:area', 2),
(280, 106, 'general:area', 3),
(282, 106, 'general:profile', 2),
(283, 106, 'general:profile', 3),
(498, 112, 'edittaskdetail:planning:changeto', 3),
(285, 106, 'general:use', 2),
(286, 106, 'general:use', 3),
(287, 107, 'daytracks:timeExport', 3),
(288, 107, 'general:use', 2),
(289, 107, 'general:use', 3),
(454, 112, 'addtask:addTaskInOwnProjects', 3),
(292, 112, 'project:cleared:see', 2),
(408, 112, 'seetask:progress:see', 1),
(295, 112, 'project:done:see', 2),
(453, 112, 'seetask:cleared:see', 3),
(407, 112, 'seetask:open:see', 1),
(298, 112, 'project:progress:see', 2),
(452, 112, 'seetask:rejected:see', 3),
(301, 112, 'project:planning:see', 2),
(303, 112, 'project:seeAll', 2),
(451, 112, 'seetask:accepted:see', 3),
(406, 112, 'seetask:planning:see', 1),
(306, 112, 'project:seeOwn', 2),
(450, 112, 'seetask:done:see', 3),
(309, 112, 'general:area', 2),
(405, 112, 'seetask:seeAll', 1),
(449, 112, 'seetask:confirm:see', 3),
(313, 112, 'general:use', 2),
(314, 104, 'general:use', 3),
(315, 105, 'comment:sendAsEmail', 1),
(428, 105, 'comment:seeAll', 3),
(427, 105, 'general:use', 3),
(422, 105, 'comment:seeAll', 2),
(319, 105, 'general:use', 1),
(320, 100, 'general:use', 2),
(321, 100, 'general:use', 1),
(322, 100, 'comment:seeAll', 2),
(323, 100, 'comment:editOwn', 2),
(324, 100, 'comment:editOwn', 1),
(325, 100, 'comment:editAll', 2),
(326, 100, 'comment:requestFeedback', 2),
(327, 100, 'comment:requestFeedback', 1),
(328, 100, 'comment:sendAsEmail', 2),
(329, 100, 'comment:sendAsEmail', 1),
(330, 100, 'comment:deleteOwn', 2),
(331, 100, 'comment:deleteOwn', 1),
(332, 100, 'comment:makePublic', 2),
(333, 100, 'comment:makePublic', 1),
(334, 104, 'mailing:sendAsEmail', 3),
(335, 104, 'mailing:sendAsEmail', 2),
(336, 104, 'reminders:popup', 3),
(337, 104, 'reminders:popup', 2),
(338, 104, 'reminders:email', 3),
(339, 104, 'reminders:email', 2),
(340, 104, 'ical_token:personal', 3),
(341, 104, 'ical_token:personal', 2),
(342, 104, 'ical_token:freebusy', 3),
(343, 104, 'ical_token:freebusy', 2),
(421, 105, 'general:use', 2),
(346, 106, 'relation:seeBusinessAddress', 3),
(347, 106, 'relation:seeBusinessAddress', 2),
(349, 106, 'relation:seeBillingAddress', 3),
(350, 106, 'relation:seeBillingAddress', 2),
(397, 106, 'general:profile', 1),
(352, 106, 'panelwidgets:staffSelector', 3),
(353, 106, 'panelwidgets:staffSelector', 2),
(396, 106, 'general:use', 1),
(355, 106, 'panelwidgets:export', 3),
(356, 106, 'panelwidgets:export', 2),
(448, 112, 'seetask:progress:see', 3),
(358, 112, 'edittaskdetail:open:changeto', 2),
(404, 112, 'project:warranty:see', 1),
(447, 112, 'seetask:open:see', 3),
(361, 112, 'edittaskdetail:progress:changeto', 2),
(403, 112, 'project:done:see', 1),
(446, 112, 'seetask:planning:see', 3),
(364, 112, 'edittaskdetail:confirm:changeto', 2),
(402, 112, 'project:progress:see', 1),
(445, 112, 'seetask:seeAll', 3),
(367, 112, 'edittaskdetail:done:changeto', 2),
(401, 112, 'project:planning:see', 1),
(444, 112, 'project:editAndDelete', 3),
(370, 112, 'edittaskdetail:accepted:changeto', 2),
(400, 112, 'project:seeOwn', 1),
(443, 112, 'project:add', 3),
(373, 112, 'edittaskdetail:rejected:changeto', 2),
(399, 112, 'general:area', 1),
(442, 112, 'project:warranty:see', 3),
(376, 112, 'edittaskdetail:cleared:changeto', 2),
(398, 112, 'general:use', 1),
(441, 112, 'project:cleared:see', 3),
(379, 112, 'deletetask:deleteOwnTasks', 2),
(440, 112, 'project:done:see', 3),
(381, 112, 'deletetask:deleteTaskInOwnProjects', 2),
(439, 112, 'project:progress:see', 3),
(383, 112, 'deletetask:deleteTaskInAllProjects', 2),
(438, 112, 'project:planning:see', 3),
(385, 112, 'deletetask:deleteOwnContainers', 2),
(437, 112, 'project:seeAll', 3),
(387, 112, 'deletetask:deleteContainerInOwnProjects', 2),
(436, 112, 'project:seeOwn', 3),
(389, 112, 'deletetask:deleteContainerInAllProjects', 2),
(435, 112, 'general:area', 3),
(391, 112, 'export:taskcsv', 2),
(434, 112, 'general:use', 3),
(393, 112, 'export:projectcsv', 2),
(394, 118, 'general:allrecords', 3),
(395, 118, 'general:allrecords', 2),
(501, 112, 'edittaskdetail:confirm:changeto', 3),
(502, 112, 'edittaskdetail:done:changeto', 3),
(503, 112, 'edittaskdetail:accepted:changeto', 3),
(504, 112, 'edittaskdetail:rejected:changeto', 3),
(505, 112, 'edittaskdetail:cleared:changeto', 3),
(506, 112, 'deletetask:deleteOwnTasks', 3),
(507, 112, 'deletetask:deleteTaskInOwnProjects', 3),
(508, 112, 'deletetask:deleteTaskInAllProjects', 3),
(509, 112, 'deletetask:deleteOwnContainers', 3),
(510, 112, 'deletetask:deleteContainerInOwnProjects', 3),
(511, 112, 'deletetask:deleteContainerInAllProjects', 3);