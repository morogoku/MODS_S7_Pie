.class public final Lcom/android/server/pm/SharedUserSetting;
.super Lcom/android/server/pm/SettingBase;
.source "SharedUserSetting.java"


# instance fields
.field final name:Ljava/lang/String;

.field final packages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field seInfoTargetSdkVersion:I

.field final signatures:Lcom/android/server/pm/PackageSignatures;

.field signaturesChanged:Ljava/lang/Boolean;

.field uidFlags:I

.field uidPrivateFlags:I

.field userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput p2, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput p3, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    return-void
.end method


# virtual methods
.method addPackage(Lcom/android/server/pm/PackageSetting;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)V

    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)V

    :cond_2c
    return-void
.end method

.method public bridge synthetic copyFrom(Lcom/android/server/pm/SettingBase;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    return-void
.end method

.method public fixSeInfoLocked()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_55

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v4, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    if-ge v3, v4, :cond_2b

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v3, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    :cond_2b
    goto :goto_11

    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result v3

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v4

    or-int/2addr v3, v4

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    iget v6, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    invoke-static {v2, v3, v5, v6}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Landroid/content/pm/PackageParser$Package;ZII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    goto :goto_30

    :cond_54
    return-void

    :cond_55
    :goto_55
    return-void
.end method

.method public getPackages()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_38

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_1e

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v3, :cond_31

    goto :goto_1e

    :cond_31
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_37
    return-object v0

    :cond_38
    :goto_38
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .registers 2

    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    return-object v0
.end method

.method public isPrivileged()Z
    .registers 2

    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method removePackage(Lcom/android/server/pm/PackageSetting;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget v3, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v3

    goto :goto_17

    :cond_27
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)V

    :cond_2a
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget v3, v2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    or-int/2addr v0, v3

    goto :goto_39

    :cond_49
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)V

    :cond_4c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedUserSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
