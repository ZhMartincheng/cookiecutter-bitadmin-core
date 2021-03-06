﻿delete SysDepartment where departmentId<>'2379788E-45F0-417B-A103-0B6440A9D55D'
delete SysUser where departmentId<>'2379788E-45F0-417B-A103-0B6440A9D55D'

delete SysRole where id<>'3F9578C5-C0A2-4C7A-B0FD-C93FAE47194B'
delete SysRoleUser where roleId<>'3F9578C5-C0A2-4C7A-B0FD-C93FAE47194B'
delete SysRoleOperatePower where roleId<>'3F9578C5-C0A2-4C7A-B0FD-C93FAE47194B'

GO
INSERT [dbo].[SysDepartment] ([departmentId], [parentId], [departmentCode], [departmentName], [departmentFullName], [orderNo], [createTime], [createBy], [updateTime], [pdateBy]) VALUES (N'2379788e-45f0-417b-a103-0b6440a9d55d', NULL, N'root', N'公司部门', N'公司部门', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([userId], [departmentId], [userCode], [userName], [userPassword], [idCard], [mobile], [email], [post], [gender], [birthday], [extendId], [userStatus], [orderNo], [createBy], [createTime], [updateBy], [updateTime]) VALUES (N'5eeea4ce-71ab-4464-b72f-17f5163ee944', N'2379788e-45f0-417b-a103-0b6440a9d55d', N'admin', N'管理员', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, N'13800138000', NULL, NULL, NULL, NULL, NULL, N'work', NULL, NULL, NULL, N'5eeea4ce-71ab-4464-b72f-17f5163ee944', NULL)
GO
INSERT [dbo].[SysRole] ([id], [roleName]) VALUES (N'3f9578c5-c0a2-4c7a-b0fd-c93fae47194b', N'系统管理员')
INSERT [dbo].[SysRoleUser] ([id], [roleId], [userId]) VALUES (N'ea757a2b-a0c2-48a7-9373-5d58972aba7a', N'3f9578c5-c0a2-4c7a-b0fd-c93fae47194b', N'5eeea4ce-71ab-4464-b72f-17f5163ee944')
GO
INSERT [dbo].[SysDictionary] ([type], [member], [memberName], [description], [orderNo]) VALUES (N'A', N'A1', N'A1', NULL, 1)
INSERT [dbo].[SysDictionary] ([type], [member], [memberName], [description], [orderNo]) VALUES (N'A', N'A2', N'A2', NULL, 2)
INSERT [dbo].[SysDictionary] ([type], [member], [memberName], [description], [orderNo]) VALUES (N'B', N'B1', N'B1', NULL, 1)
INSERT [dbo].[SysDictionary] ([type], [member], [memberName], [description], [orderNo]) VALUES (N'B', N'B2', N'B2', NULL, 2)
GO
INSERT [dbo].[SysOperation] ([id], [operationSign], [operationName], [createBy], [createTime], [orderNo]) VALUES (N'ffeb6542-565b-48b7-bbd9-ae87c7398886', N'query', N'访问', NULL, NULL, 1)
INSERT [dbo].[SysOperation] ([id], [operationSign], [operationName], [createBy], [createTime], [orderNo]) VALUES (N'3e10d841-f9ea-4960-b6a1-864de55ef0f2', N'add', N'新增', NULL, NULL, 2)
INSERT [dbo].[SysOperation] ([id], [operationSign], [operationName], [createBy], [createTime], [orderNo]) VALUES (N'0a75b779-82ea-4f07-a718-75a231d1b211', N'save', N'保存', NULL, NULL, 3)
INSERT [dbo].[SysOperation] ([id], [operationSign], [operationName], [createBy], [createTime], [orderNo]) VALUES (N'9045a8a8-850d-40a2-a961-7c1a9dc357d5', N'delete', N'删除', NULL, NULL, 4)
INSERT [dbo].[SysOperation] ([id], [operationSign], [operationName], [createBy], [createTime], [orderNo]) VALUES (N'9e88c097-ce66-4f5b-ad45-f39dd321b281', N'import', N'导入', NULL, NULL, 5)
INSERT [dbo].[SysOperation] ([id], [operationSign], [operationName], [createBy], [createTime], [orderNo]) VALUES (N'bf988b55-25b0-4ecb-9e02-8b8e65ea8776', N'export', N'导出', NULL, NULL, 6)
INSERT [dbo].[SysOperation] ([id], [operationSign], [operationName], [createBy], [createTime], [orderNo]) VALUES (N'032a9c34-caf0-43f1-be56-681dee530dd6', N'download', N'下载', NULL, NULL, 7)
INSERT [dbo].[SysOperation] ([id], [operationSign], [operationName], [createBy], [createTime], [orderNo]) VALUES (N'f515f1b4-9f4e-4f4c-90b1-9cbf02b356bf', N'back', N'返回', NULL, NULL, 8)
GO

--模块
INSERT [dbo].[SysModule] ([moduleId], [parentId], [moduleName], [moduleIcon], [description], [orderNo]) VALUES (N'52ee24b7-c2ff-44d0-9fee-3897d609d554', NULL, N'系统管理', N'fa-cog', NULL, 91)
INSERT [dbo].[SysModule] ([moduleId], [parentId], [moduleName], [moduleIcon], [description], [orderNo]) VALUES (N'5dfab181-a524-44b2-9e6a-273fc2d2e272', NULL, N'开发管理', N'fa-code', NULL, 92)
INSERT [dbo].[SysModule] ([moduleId], [parentId], [moduleName], [moduleIcon], [description], [orderNo]) VALUES (N'20256a37-fead-4d11-8052-f0df33738c3b', NULL, N'示例功能', NULL, NULL, 93)
--页面、页面操作、页面权限
GO

INSERT [dbo].[SysModulePage] ([id], [moduleId], [pageSign], [pageName], [pageIcon], [pageUrl], [description], [orderNo]) VALUES (N'7a90de2b-0663-4611-9c48-aea881cd4f9a', N'52ee24b7-c2ff-44d0-9fee-3897d609d554', N'Department', N'部门信息', N'fa-group', N'/system/department', NULL, 1)
INSERT [dbo].[SysModulePage] ([id], [moduleId], [pageSign], [pageName], [pageIcon], [pageUrl], [description], [orderNo]) VALUES (N'b3818125-8874-4413-8b0e-da5627181ae9', N'52ee24b7-c2ff-44d0-9fee-3897d609d554', N'User', N'用户信息', N'fa-user-circle', N'/system/user', NULL, 2)
INSERT [dbo].[SysModulePage] ([id], [moduleId], [pageSign], [pageName], [pageIcon], [pageUrl], [description], [orderNo]) VALUES (N'193495e7-d975-4d54-99ea-06b205ecdfee', N'52ee24b7-c2ff-44d0-9fee-3897d609d554', N'Log', N'日志管理', N'fa-anchor', N'/system/log', NULL, 4)
INSERT [dbo].[SysModulePage] ([id], [moduleId], [pageSign], [pageName], [pageIcon], [pageUrl], [description], [orderNo]) VALUES (N'92a37fab-14e5-4f99-818d-213e27079e68', N'52ee24b7-c2ff-44d0-9fee-3897d609d554', N'Role', N'角色权限', N'fa-address-card-o', N'/system/role', N'', 3)

INSERT [dbo].[SysModulePage] ([id], [moduleId], [pageSign], [pageName], [pageIcon], [pageUrl], [description], [orderNo]) VALUES (N'861eb706-f261-4b5e-85f0-dea5bf37848f', N'5dfab181-a524-44b2-9e6a-273fc2d2e272', N'Menu', N'系统菜单', N'fa-reorder', N'/develop/menu', NULL, 1)
INSERT [dbo].[SysModulePage] ([id], [moduleId], [pageSign], [pageName], [pageIcon], [pageUrl], [description], [orderNo]) VALUES (N'5246eaba-c184-46f0-bd78-37ac309fec39', N'5dfab181-a524-44b2-9e6a-273fc2d2e272', N'Operation', N'页面操作', N'fa-edit', N'/develop/operation', NULL, 2)
INSERT [dbo].[SysModulePage] ([id], [moduleId], [pageSign], [pageName], [pageIcon], [pageUrl], [description], [orderNo]) VALUES (N'e2041824-a541-478d-977a-51935c2fa74a', N'5dfab181-a524-44b2-9e6a-273fc2d2e272', N'Dictionary', N'数据字典', N'fa-book', N'/develop/dictionary', NULL, 3)
INSERT [dbo].[SysModulePage] ([id], [moduleId], [pageSign], [pageName], [pageIcon], [pageUrl], [description], [orderNo]) VALUES (N'6e16c53c-53ee-4c13-b096-a44458901b2e', N'5dfab181-a524-44b2-9e6a-273fc2d2e272', N'Generating', N'生成代码', NULL, N'/develop/generating', NULL, 4)
INSERT [dbo].[SysModulePage] ([id], [moduleId], [pageSign], [pageName], [pageIcon], [pageUrl], [description], [orderNo]) VALUES (N'cfcdc86d-3546-4578-9e1a-b5c210cbf2f5', N'5dfab181-a524-44b2-9e6a-273fc2d2e272', N'PrototypingExample', N'原型示例', NULL, N'/develop/prototypingexample', NULL, 5)

INSERT [dbo].[SysModulePage] ([id], [moduleId], [pageSign], [pageName], [pageIcon], [pageUrl], [description], [orderNo]) VALUES (N'a93a433d-85e7-4019-b7bf-e0f87429b7f4', N'20256a37-fead-4d11-8052-f0df33738c3b', N'ExampleOne', N'简单示例', NULL, N'/templates/exampleone', N'表单套件最简易实现', 1)
INSERT [dbo].[SysModulePage] ([id], [moduleId], [pageSign], [pageName], [pageIcon], [pageUrl], [description], [orderNo]) VALUES (N'5a4bd0dc-ed8b-42a0-9801-1040f71aa606', N'20256a37-fead-4d11-8052-f0df33738c3b', N'ExampleRedirect', N'完整示例', NULL, N'/templates/exampleredirect', N'表单套件完整功能参数', 2)

GO

--初始化权限
declare @roleId uniqueidentifier
set @roleId=N'3f9578c5-c0a2-4c7a-b0fd-c93fae47194b'

declare mcursor cursor scroll for select id,moduleId from SysModulePage where id not in (select pageId from SysPageOperation) 
open mcursor
declare @id uniqueidentifier
declare @pid uniqueidentifier
declare @sign nvarchar(512)
fetch next from mcursor into @id,@pid
while @@FETCH_STATUS=0
begin
	INSERT [dbo].[SysPageOperation] ([id], [pageID], [operationSign]) VALUES (newid(),@id, N'query')
	INSERT [dbo].[SysPageOperation] ([id], [pageID], [operationSign]) VALUES (newid(),@id, N'add')
	INSERT [dbo].[SysPageOperation] ([id], [pageID], [operationSign]) VALUES (newid(),@id, N'save')
	INSERT [dbo].[SysPageOperation] ([id], [pageID], [operationSign]) VALUES (newid(),@id, N'delete')
	set @sign='query,add,save,delete'
	
	if @id='92a37fab-14e5-4f99-818d-213e27079e68'
	begin
		INSERT [dbo].[SysPageOperation] ([id], [pageID], [operationSign]) VALUES (newid(),@id, N'back')
		set @sign='query,add,save,delete,back'
	end

	if @id='a93a433d-85e7-4019-b7bf-e0f87429b7f4'
	begin
		INSERT [dbo].[SysPageOperation] ([id], [pageID], [operationSign]) VALUES (newid(),@id, N'import')
		INSERT [dbo].[SysPageOperation] ([id], [pageID], [operationSign]) VALUES (newid(),@id, N'export')
		set @sign='query,add,save,delete,import,export'
	end
	
	INSERT [dbo].[SysRoleOperatePower] ([id], [roleId], [modulePageId], [moduleParentId], [operationSign]) VALUES (newid(), @roleId, @id, @pid, @sign)
    fetch next from mcursor into @id,@pid
end 
close mcursor
deallocate mcursor

INSERT [dbo].[SysRoleOperatePower] ([id], [roleId], [modulePageId], [moduleParentId], [operationSign]) select newid(), @roleId, moduleId, parentId, 'query' from SysModule where moduleId not in (select modulePageId from SysRoleOperatePower)
