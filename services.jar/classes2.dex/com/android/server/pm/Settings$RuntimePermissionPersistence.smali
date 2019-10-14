.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RuntimePermissionPersistence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
    }
.end annotation


# static fields
.field private static final MAX_WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x7d0L

.field private static final WRITE_PERMISSIONS_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFingerprints:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPersistenceLock:Ljava/lang/Object;

.field private final mWriteScheduled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-direct {p1, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemovedLPw(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    return-void
.end method

.method private onUserRemovedLPw(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SettingBase;

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    goto :goto_11

    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SettingBase;

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    goto :goto_2d

    :cond_3d
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_93

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_93

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x317b13

    const/4 v7, 0x0

    if-eq v5, v6, :cond_2b

    goto :goto_34

    :cond_2b
    const-string v5, "item"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v4, v7

    :cond_34
    :goto_34
    if-eqz v4, :cond_37

    goto :goto_91

    :cond_37
    const-string/jumbo v1, "name"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    if-nez v5, :cond_63

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_63
    const-string v6, "granted"

    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_74

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_72

    goto :goto_74

    :cond_72
    move v3, v7

    nop

    :cond_74
    :goto_74
    const-string v8, "flags"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_83

    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    nop

    :cond_83
    const/16 v8, 0xff

    if-eqz v3, :cond_8e

    invoke-virtual {p2, v5, p3}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    invoke-virtual {p2, v5, p3, v8, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_91

    :cond_8e
    invoke-virtual {p2, v5, p3, v8, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    :goto_91
    goto/16 :goto_4

    :cond_93
    return-void
.end method

.method private parseRestoredRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_93

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_93

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x3472f0

    if-eq v4, v5, :cond_2a

    goto :goto_34

    :cond_2a
    const-string/jumbo v4, "perm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v3, 0x0

    :cond_34
    :goto_34
    if-eqz v3, :cond_37

    goto :goto_91

    :cond_37
    const-string/jumbo v1, "name"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "true"

    const-string v5, "granted"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v4, 0x0

    const-string/jumbo v5, "true"

    const-string/jumbo v6, "set"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    or-int/lit8 v4, v4, 0x1

    :cond_5f
    const-string/jumbo v5, "true"

    const-string v6, "fixed"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    or-int/lit8 v4, v4, 0x2

    :cond_70
    const-string/jumbo v5, "true"

    const-string/jumbo v6, "rou"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    or-int/lit8 v3, v4, 0x8

    goto :goto_84

    :cond_83
    move v3, v4

    :goto_84
    if-nez v10, :cond_88

    if-eqz v3, :cond_91

    :cond_88
    move-object v4, p0

    move-object v5, p2

    move-object v6, v1

    move v7, v10

    move v8, v3

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V

    :cond_91
    :goto_91
    goto/16 :goto_4

    :cond_93
    return-void
.end method

.method private parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_fc

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_fc

    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1b

    goto :goto_4

    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x79e10974

    if-eq v6, v7, :cond_59

    const v1, 0x1b1cc

    if-eq v6, v1, :cond_4f

    const v1, 0x98dd20f

    if-eq v6, v1, :cond_44

    const v1, 0x1cf15833

    if-eq v6, v1, :cond_39

    goto :goto_64

    :cond_39
    const-string/jumbo v1, "shared-user"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v3, 0x2

    goto :goto_65

    :cond_44
    const-string/jumbo v1, "runtime-permissions"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v3, 0x0

    goto :goto_65

    :cond_4f
    const-string/jumbo v1, "pkg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_65

    :cond_59
    const-string/jumbo v3, "restored-perms"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    move v3, v1

    goto :goto_65

    :cond_64
    :goto_64
    move v3, v5

    :goto_65
    const/4 v1, 0x0

    packed-switch v3, :pswitch_data_fe

    goto/16 :goto_fa

    :pswitch_6b
    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRestoredRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    goto/16 :goto_fa

    :pswitch_77
    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_a5

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown shared user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_a5
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    goto :goto_fa

    :pswitch_ad
    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-nez v3, :cond_db

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_db
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    goto :goto_fa

    :pswitch_e3
    const-string v3, "fingerprint"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    nop

    :goto_fa
    goto/16 :goto_4

    :cond_fc
    return-void

    nop

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_ad
        :pswitch_77
        :pswitch_6b
    .end packed-switch
.end method

.method private revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V
    .registers 9

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0, v3, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    const/16 v4, 0xff

    const/4 v5, 0x0

    invoke-virtual {v0, v3, p2, v4, v5}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    :cond_2f
    goto :goto_c

    :cond_30
    return-void
.end method

.method private writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    const-string v2, "item"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "name"

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "granted"

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "flags"

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "item"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    :cond_40
    return-void
.end method

.method private writePermissionsSync(I)V
    .registers 30

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_b
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_17

    move-object v3, v0

    goto :goto_1f

    :catch_17
    move-exception v0

    const/4 v6, 0x4

    const-string/jumbo v7, "there is no log(writePermissionsSync) file"

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_1f
    new-instance v0, Lcom/android/server/pm/XmlMoreAtomicFile;

    iget-object v6, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # invokes: Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;
    invoke-static {v6, v2}, Lcom/android/server/pm/Settings;->access$400(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package-perms-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7, v3}, Lcom/android/server/pm/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    move-object v6, v0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v0

    iget-object v9, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4c
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_2e5

    const/4 v11, 0x0

    :goto_5a
    if-ge v11, v0, :cond_90

    :try_start_5c
    iget-object v12, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v12, v12, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v13, v13, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v14, :cond_86

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v14

    nop

    invoke-virtual {v14, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_86

    invoke-virtual {v7, v12, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_5c .. :try_end_86} :catchall_89

    :cond_86
    add-int/lit8 v11, v11, 0x1

    goto :goto_5a

    :catchall_89
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    goto/16 :goto_2ea

    :cond_90
    :try_start_90
    iget-object v11, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v11, v11, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_2e5

    const/4 v12, 0x0

    :goto_99
    if-ge v12, v11, :cond_c8

    :try_start_9b
    iget-object v13, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v13, v13, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v14, v14, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v14}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v15

    nop

    invoke-virtual {v15, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v16

    move-object/from16 v17, v16

    move-object/from16 v10, v17

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_c5

    invoke-virtual {v8, v13, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c5
    .catchall {:try_start_9b .. :try_end_c5} :catchall_89

    :cond_c5
    add-int/lit8 v12, v12, 0x1

    goto :goto_99

    :cond_c8
    :try_start_c8
    monitor-exit v9
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_2e5

    const/4 v0, 0x0

    move-object v9, v0

    :try_start_cb
    invoke-virtual {v6}, Lcom/android/server/pm/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v12

    move-object v9, v12

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v12

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v9, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v13, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v12, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v13, "runtime-permissions"

    invoke-interface {v12, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v13, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_f7} :catch_29e
    .catchall {:try_start_cb .. :try_end_f7} :catchall_298

    if-eqz v13, :cond_10d

    :try_start_f9
    const-string v14, "fingerprint"

    invoke-interface {v12, v0, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_fe
    .catch Ljava/lang/Throwable; {:try_start_f9 .. :try_end_fe} :catch_106
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_ff

    goto :goto_10d

    :catchall_ff
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    goto/16 :goto_2cf

    :catch_106
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    goto/16 :goto_2a3

    :cond_10d
    :goto_10d
    :try_start_10d
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v14
    :try_end_111
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_111} :catch_29e
    .catchall {:try_start_10d .. :try_end_111} :catchall_298

    const/4 v15, 0x0

    :goto_112
    if-ge v15, v14, :cond_141

    :try_start_114
    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v18, v16

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    move-object/from16 v19, v16

    const-string/jumbo v10, "pkg"

    invoke-interface {v12, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "name"

    move-object/from16 v11, v18

    invoke-interface {v12, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v10, v19

    invoke-direct {v1, v12, v10}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    const-string/jumbo v5, "pkg"

    invoke-interface {v12, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_13d
    .catch Ljava/lang/Throwable; {:try_start_114 .. :try_end_13d} :catch_106
    .catchall {:try_start_114 .. :try_end_13d} :catchall_ff

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    goto :goto_112

    :cond_141
    :try_start_141
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v5
    :try_end_145
    .catch Ljava/lang/Throwable; {:try_start_141 .. :try_end_145} :catch_29e
    .catchall {:try_start_141 .. :try_end_145} :catchall_298

    const/4 v10, 0x0

    :goto_146
    if-ge v10, v5, :cond_172

    :try_start_148
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    const-string/jumbo v0, "shared-user"

    move/from16 v20, v5

    const/4 v5, 0x0

    invoke-interface {v12, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"

    invoke-interface {v12, v5, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {v1, v12, v15}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    const-string/jumbo v0, "shared-user"

    invoke-interface {v12, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_16c
    .catch Ljava/lang/Throwable; {:try_start_148 .. :try_end_16c} :catch_106
    .catchall {:try_start_148 .. :try_end_16c} :catchall_ff

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v20

    const/4 v0, 0x0

    goto :goto_146

    :cond_172
    move/from16 v20, v5

    :try_start_174
    const-string/jumbo v0, "runtime-permissions"

    const/4 v5, 0x0

    invoke-interface {v12, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # getter for: Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/pm/Settings;->access$500(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_268

    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # getter for: Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/pm/Settings;->access$500(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_268

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v10, 0x0

    :goto_19a
    if-ge v10, v5, :cond_268

    nop

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    if-eqz v11, :cond_253

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v15

    if-lez v15, :cond_253

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v0, "restored-perms"

    move/from16 v22, v5

    const/4 v5, 0x0

    invoke-interface {v12, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "packageName"

    invoke-interface {v12, v5, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_1c7
    if-ge v5, v0, :cond_243

    invoke-virtual {v11, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    move-object/from16 v23, v16

    move/from16 v24, v0

    const-string/jumbo v0, "perm"
    :try_end_1d6
    .catch Ljava/lang/Throwable; {:try_start_174 .. :try_end_1d6} :catch_29e
    .catchall {:try_start_174 .. :try_end_1d6} :catchall_298

    move-object/from16 v25, v7

    const/4 v7, 0x0

    :try_start_1d9
    invoke-interface {v12, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"
    :try_end_1df
    .catch Ljava/lang/Throwable; {:try_start_1d9 .. :try_end_1df} :catch_23e
    .catchall {:try_start_1d9 .. :try_end_1df} :catchall_239

    move-object/from16 v26, v8

    move-object/from16 v7, v23

    :try_start_1e3
    iget-object v8, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    move-object/from16 v27, v11

    const/4 v11, 0x0

    invoke-interface {v12, v11, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    if-eqz v0, :cond_1f8

    const-string v0, "granted"

    const-string/jumbo v8, "true"

    const/4 v11, 0x0

    invoke-interface {v12, v11, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1f8
    iget v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    const/4 v8, 0x1

    and-int/2addr v0, v8

    if-eqz v0, :cond_208

    const-string/jumbo v0, "set"

    const-string/jumbo v8, "true"

    const/4 v11, 0x0

    invoke-interface {v12, v11, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_208
    iget v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_217

    const-string v0, "fixed"

    const-string/jumbo v8, "true"

    const/4 v11, 0x0

    invoke-interface {v12, v11, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_217
    iget v0, v7, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_227

    const-string/jumbo v0, "rou"

    const-string/jumbo v8, "true"

    const/4 v11, 0x0

    invoke-interface {v12, v11, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_227
    const-string/jumbo v0, "perm"

    const/4 v8, 0x0

    invoke-interface {v12, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v24

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v11, v27

    goto :goto_1c7

    :catchall_239
    move-exception v0

    move-object/from16 v26, v8

    goto/16 :goto_2cf

    :catch_23e
    move-exception v0

    move-object/from16 v26, v8

    goto/16 :goto_2a3

    :cond_243
    move/from16 v24, v0

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v11

    const-string/jumbo v0, "restored-perms"

    const/4 v5, 0x0

    invoke-interface {v12, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_25c

    :cond_253
    move-object/from16 v21, v0

    move/from16 v22, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    const/4 v5, 0x0

    :goto_25c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v21

    move/from16 v5, v22

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    goto/16 :goto_19a

    :cond_268
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v6, v9}, Lcom/android/server/pm/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_280

    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_280
    .catch Ljava/lang/Throwable; {:try_start_1e3 .. :try_end_280} :catch_296
    .catchall {:try_start_1e3 .. :try_end_280} :catchall_2ce

    :cond_280
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_288

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_288
    if-eqz v4, :cond_2cd

    :goto_28a
    nop

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    const/16 v7, 0x1fc

    invoke-static {v0, v7, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_2cd

    :catch_296
    move-exception v0

    goto :goto_2a3

    :catchall_298
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    goto :goto_2cf

    :catch_29e
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    :goto_2a3
    const/4 v5, 0x6

    :try_start_2a4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write settings, restoring backup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v5, "PackageManager"

    const-string v7, "Failed to write settings, restoring backup"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v6, v9}, Lcom/android/server/pm/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2c2
    .catchall {:try_start_2a4 .. :try_end_2c2} :catchall_2ce

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_2ca

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_2ca
    if-eqz v4, :cond_2cd

    goto :goto_28a

    :cond_2cd
    :goto_2cd
    return-void

    :catchall_2ce
    move-exception v0

    :goto_2cf
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_2d7

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_2d7
    if-eqz v4, :cond_2e4

    nop

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    const/16 v8, 0x1fc

    invoke-static {v5, v8, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2e4
    throw v0

    :catchall_2e5
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    :goto_2ea
    :try_start_2ea
    monitor-exit v9
    :try_end_2eb
    .catchall {:try_start_2ea .. :try_end_2eb} :catchall_2ec

    throw v0

    :catchall_2ec
    move-exception v0

    goto :goto_2ea
.end method


# virtual methods
.method public areDefaultRuntimPermissionsGrantedLPr(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public deleteUserRuntimePermissionsFile(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # invokes: Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;
    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$400(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onDefaultRuntimePermissionsGrantedLPr(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    return-void
.end method

.method public readStateForUserSyncLPr(I)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # invokes: Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;
    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$400(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x4

    :try_start_e
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_1b

    move-object v3, v5

    goto :goto_22

    :catch_1b
    move-exception v5

    const-string/jumbo v6, "there is no log(readStateForUserSyncLPr) file"

    invoke-static {v4, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_22
    :try_start_22
    new-instance v5, Lcom/android/server/pm/XmlMoreAtomicFile;

    invoke-direct {v5, v0, v3}, Lcom/android/server/pm/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V

    move-object v1, v5

    invoke-virtual {v1}, Lcom/android/server/pm/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_2c} :catch_8f

    move-object v4, v5

    nop

    nop

    const/16 v5, 0x1fc

    const/4 v6, -0x1

    :try_start_32
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v7, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_3d} :catch_52
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3d} :catch_52
    .catchall {:try_start_32 .. :try_end_3d} :catchall_50

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_45

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_45
    if-eqz v2, :cond_7b

    :goto_47
    nop

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_7b

    :catchall_50
    move-exception v7

    goto :goto_7c

    :catch_52
    move-exception v7

    :try_start_53
    invoke-virtual {v1}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V

    const/4 v8, 0x6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing permissions file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-virtual {v8}, Lcom/android/server/pm/Settings;->resetSystemServer()V
    :try_end_70
    .catchall {:try_start_53 .. :try_end_70} :catchall_50

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_78

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_78
    if-eqz v2, :cond_7b

    goto :goto_47

    :cond_7b
    :goto_7b
    return-void

    :goto_7c
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_84

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_84
    if-eqz v2, :cond_8e

    nop

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_8e
    throw v7

    :catch_8f
    move-exception v5

    const-string v6, "No permissions state"

    invoke-static {v4, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v4, "PackageManager"

    const-string v6, "No permissions state"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # getter for: Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/pm/Settings;->access$500(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_1d

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # getter for: Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/pm/Settings;->access$500(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1d
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_2e

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    new-instance v2, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/android/server/pm/Settings$RestoredPermissionGrant;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public writePermissionsForUserAsyncLPr(I)V
    .registers 15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    const-wide/16 v3, 0xc8

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    sub-long v7, v0, v5

    const-wide/16 v9, 0x7d0

    cmp-long v2, v7, v9

    if-ltz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2b
    add-long/2addr v9, v5

    sub-long/2addr v9, v0

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_59

    :cond_43
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_59
    return-void
.end method

.method public writePermissionsForUserSyncLPr(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    return-void
.end method

.method public writeRuntimePermissionsForShutdown()V
    .registers 8

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # getter for: Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    # invokes: Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/pm/Settings;->access$300(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_30

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    :cond_30
    goto :goto_15

    :cond_31
    monitor-exit v1

    goto :goto_36

    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_33

    throw v2

    :cond_36
    :goto_36
    return-void
.end method
