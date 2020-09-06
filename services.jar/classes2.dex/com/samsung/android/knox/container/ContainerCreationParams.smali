.class public Lcom/samsung/android/knox/container/ContainerCreationParams;
.super Ljava/lang/Object;
.source "ContainerCreationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/ContainerCreationParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCK_TYPE_ENTERPRISEIDENTITY:I = 0x8

.field public static final LOCK_TYPE_FINGER_PRINT:I = 0x1

.field public static final LOCK_TYPE_IRIS:I = 0x9

.field public static final LOCK_TYPE_PASSWORD:I = 0x0

.field public static final LOCK_TYPE_PATTERN:I = 0x3

.field public static final LOCK_TYPE_PIN:I = 0x2

.field public static final STATE_SETUP_POST_CREATE:I = 0x1

.field public static final STATE_SETUP_PROGRESS:I = 0x0

.field public static final STATE_WIZARD_EXIT_CLEAN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ContainerCreationParams"


# instance fields
.field private isMigrationFlow:Z

.field private mAdminParam:Ljava/lang/String;

.field private mAdminRemovable:Z

.field private mAdminUid:I

.field private mBackupPin:Ljava/lang/String;

.field private mBiometricsInfo:I

.field private mConfigurationName:Ljava/lang/String;

.field private mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

.field private mContainerId:I

.field private mCreatorUid:I

.field private mFeatureType:Ljava/lang/String;

.field private mFingerprintPlus:Z

.field private mFlags:I

.field private mIrisPlus:Z

.field private mLockType:I

.field private mName:Ljava/lang/String;

.field private mPackagePoliciesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPassword:Ljava/lang/String;

.field private mRequestId:I

.field private mRequestState:I

.field private mResetPwdKey:Ljava/lang/String;

.field private mRestoreSelected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/container/ContainerCreationParams$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/ContainerCreationParams$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/ContainerCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4a

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    :cond_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5e

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    :cond_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_72

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    :cond_72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    if-eqz v3, :cond_86

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_86

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    :cond_86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9a

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    :cond_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    if-eqz v3, :cond_ae

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_ae

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    :cond_ae
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_da

    move v3, v2

    goto :goto_db

    :cond_da
    move v3, v1

    :goto_db
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_e5

    move v3, v2

    goto :goto_e6

    :cond_e5
    move v3, v1

    :goto_e6
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_f0

    move v3, v2

    goto :goto_f1

    :cond_f0
    move v3, v1

    :goto_f1
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_111

    move v3, v2

    goto :goto_112

    :cond_111
    move v3, v1

    :goto_112
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_11c

    move v1, v2

    nop

    :cond_11c
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    if-eqz v1, :cond_132

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_132

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    :cond_132
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->deserializePackagePolicies(Landroid/os/Parcel;Ljava/util/HashMap;)V

    return-void
.end method

.method private deserializePackagePolicies(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v3

    :goto_a
    if-ge v0, v2, :cond_44

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v6, 0x1

    move v7, v6

    move v6, v3

    :goto_1d
    if-ge v6, v4, :cond_3e

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2a

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_2a
    const/4 v8, 0x2

    if-ne v7, v8, :cond_39

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-array v8, v8, [B

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    :goto_39
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_3e
    invoke-virtual {p2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_44
    return-void
.end method

.method private serializePackagePolicies(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_62

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    if-ne v5, v8, :cond_4d

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_4d

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5e

    :cond_4d
    const/4 v8, 0x2

    if-ne v5, v8, :cond_5e

    instance-of v8, v7, [B

    if-eqz v8, :cond_5e

    move-object v8, v7

    check-cast v8, [B

    array-length v9, v8

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_5e
    :goto_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_61
    goto :goto_65

    :cond_62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_65
    goto :goto_12

    :cond_66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_69
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/knox/container/ContainerCreationParams;
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/container/ContainerCreationParams;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;-><init>()V

    iget v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setRequestId(I)V

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setName(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setLockType(I)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setFingerprintPlus(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setIrisPlus(Z)V

    iget v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setBiometricsInfo(I)V

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setBackupPin(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setRestoreSelection(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setIsMigrationFlow(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->clone()Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 4

    const-string v0, "ContainerCreationParams"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContainerCreationParams"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContainerCreationParams"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdminUid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getAdminParam()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminRemovable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    return v0
.end method

.method public getAdminUid()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    return v0
.end method

.method public getBackupPin()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    return-object v0
.end method

.method public getBiometricsInfo()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    return v0
.end method

.method public getConfigurationName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    return-object v0
.end method

.method public getContainerId()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    return v0
.end method

.method public getCreatorUid()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    return v0
.end method

.method public getFeatureType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerprintPlus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    return v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    return v0
.end method

.method public getIrisPlus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    return v0
.end method

.method public getIsMigrationFlow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    return v0
.end method

.method public getLockType()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagePoliciesMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    return v0
.end method

.method public getRequestState()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    return v0
.end method

.method public getResetPasswordKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRestoreSelection()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    return v0
.end method

.method public setAdminParam(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    return-void
.end method

.method public setAdminRemovable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    return-void
.end method

.method public setAdminUid(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    return-void
.end method

.method public setBackupPin(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    return-void
.end method

.method public setBiometricsInfo(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    return-void
.end method

.method public setConfigurationName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    return-void
.end method

.method public setConfigurationType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    return-void
.end method

.method public setContainerId(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    return-void
.end method

.method public setCreatorUid(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    return-void
.end method

.method public setFeatureType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    return-void
.end method

.method public setFingerprintPlus(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    return-void
.end method

.method public setFlags(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    return-void
.end method

.method public setIrisPlus(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    return-void
.end method

.method public setIsMigrationFlow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    return-void
.end method

.method public setLockType(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPackagePoliciesMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    return-void
.end method

.method public setRequestState(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    return-void
.end method

.method public setResetPasswordKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    return-void
.end method

.method public setRestoreSelection(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_f

    :cond_a
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_f
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1e

    :cond_19
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1e
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2d

    :cond_28
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2d
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3c

    :cond_37
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_3c
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4b

    :cond_46
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4b
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5a

    :cond_55
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_5a
    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_aa

    :cond_a5
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_aa
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->serializePackagePolicies(Landroid/os/Parcel;Ljava/util/HashMap;)V

    return-void
.end method
