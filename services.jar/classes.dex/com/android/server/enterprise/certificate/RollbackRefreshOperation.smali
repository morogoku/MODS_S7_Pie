.class Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.super Ljava/lang/Object;
.source "RollbackRefreshOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;,
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    }
.end annotation


# static fields
.field public static final INIT_ROLLBACK_REFRESH_PENDING_LIST:I = 0x3

.field private static final KEYSTORE_ADD_OPERATION:I = 0x0

.field private static final KEYSTORE_DELETE_OPERATION:I = 0x1

.field public static final KEYSTORE_REFRESH_OPERATION:I = 0x1

.field public static final KEYSTORE_ROLLBACK_OPERATION:I = 0x0

.field public static final KEYSTORE_ROLLBACK_REFRESH_OPERATION:I = 0x2

.field public static final REMOVE_ROLLBACK_REFRESH_PENDING_LIST:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RollbackRefreshOperation"


# instance fields
.field private final ALIAS_SEPARATOR:Ljava/lang/String;

.field private final mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field private mContext:Landroid/content/Context;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeyStoreLock:Ljava/lang/Object;

.field private mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mOperation:I

.field private mPendingKeystoreAction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPriority:I

.field private mUserId:I

.field private mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_#_"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->ALIAS_SEPARATOR:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-direct {v0, p2}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/security/KeyStore;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    const/4 v3, 0x4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStore(I)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshSystemKeyStoreAsUser(I)V

    goto :goto_1f

    :cond_37
    return-void
.end method

.method private executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    const/4 v3, 0x4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStore(I)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackSystemKeyStoreAsUser(I)V

    goto :goto_1f

    :cond_37
    return-void
.end method

.method private getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x3f2

    const/4 v7, 0x4

    if-ne v2, v7, :cond_18

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_21

    :cond_18
    const/4 v8, 0x2

    if-ne v2, v8, :cond_21

    iget-object v8, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v1, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    :cond_21
    :goto_21
    if-nez v5, :cond_24

    return-object v4

    :cond_24
    array-length v8, v5

    const/4 v9, 0x0

    :goto_26
    if-ge v9, v8, :cond_a1

    aget-object v10, v5, v9

    const/4 v11, 0x0

    if-ne v2, v7, :cond_32

    invoke-virtual {v3, v10, v1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    goto :goto_47

    :cond_32
    iget-object v12, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v11

    :goto_47
    if-nez v11, :cond_4a

    return-object v4

    :cond_4a
    invoke-static {v11}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_55

    return-object v4

    :cond_55
    const/4 v13, 0x1

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_97

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    if-nez v15, :cond_69

    goto :goto_5a

    :cond_69
    iget-object v6, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v7, 0x3

    move/from16 v0, p3

    invoke-virtual {v6, v15, v7, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v6

    if-nez v6, :cond_8e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_#_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e
    add-int/lit8 v13, v13, 0x1

    nop

    move-object/from16 v0, p0

    const/16 v6, 0x3f2

    const/4 v7, 0x4

    goto :goto_5a

    :cond_97
    move/from16 v0, p3

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/16 v6, 0x3f2

    const/4 v7, 0x4

    goto :goto_26

    :cond_a1
    move/from16 v0, p3

    return-object v4
.end method

.method private getUsersKeystoreUnlocked(I)[Ljava/lang/Integer;
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_27

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_25
    const/4 v2, 0x0

    return-object v2

    :cond_27
    :goto_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_4d
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_56
    goto :goto_2f

    :cond_57
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    return-object v4
.end method

.method private isNativeKeyStoreUnlockedAsUser(I)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_4} :catch_14

    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v2, v3, :cond_f

    const/4 v0, 0x1

    :cond_f
    monitor-exit v1

    goto :goto_30

    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    :try_start_13
    throw v2
    :try_end_14
    .catch Ljava/lang/AssertionError; {:try_start_13 .. :try_end_14} :catch_14

    :catch_14
    move-exception v1

    const-string v2, "RollbackRefreshOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_30
    return v0
.end method

.method private pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_2a

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2d
    return-object p1
.end method

.method private refreshNativeKeyStore(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    return-void
.end method

.method private refreshNativeKeyStoreAsUser(II)V
    .registers 15

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x3f2

    const/4 v3, 0x4

    if-ne p1, v3, :cond_10

    move v2, p2

    :cond_10
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_19
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v6

    if-eqz v6, :cond_48

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne p1, v3, :cond_2c

    new-instance v3, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object v8, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    move-object v6, v3

    goto :goto_31

    :cond_2c
    const/4 v3, 0x2

    if-eq p1, v3, :cond_31

    monitor-exit v5

    return-void

    :cond_31
    :goto_31
    const-string v3, "CACERT_"

    invoke-direct {p0, v3, p1, p2, v6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v3, "USRCERT_"

    invoke-direct {p0, v3, p1, p2, v6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz v6, :cond_48

    invoke-virtual {v6}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    :cond_48
    monitor-exit v5
    :try_end_49
    .catchall {:try_start_19 .. :try_end_49} :catchall_7a

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;I)Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_70

    new-instance v3, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;

    const/4 v7, 0x1

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v3

    move-object v6, p0

    move v8, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_70
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3, v0, v5, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    return-void

    :catchall_7a
    move-exception v3

    :try_start_7b
    monitor-exit v5
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v3
.end method

.method private refreshSystemKeyStoreAsUser(I)V
    .registers 25

    move-object/from16 v8, p0

    move/from16 v9, p1

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemDisabledList"

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemPrevDisabledList"

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "userRemovedList"

    invoke-virtual {v1, v2, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    :try_start_2a
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_35} :catch_1ee
    .catch Ljava/lang/AssertionError; {:try_start_2a .. :try_end_35} :catch_1cd
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_35} :catch_1ac
    .catchall {:try_start_2a .. :try_end_35} :catchall_1aa

    move-object v15, v0

    :try_start_36
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3a} :catch_18c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_170
    .catch Ljava/security/cert/CertificateException; {:try_start_36 .. :try_end_3a} :catch_157
    .catchall {:try_start_36 .. :try_end_3a} :catchall_155

    if-nez v0, :cond_43

    :try_start_3c
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3f} :catch_1ee
    .catch Ljava/lang/AssertionError; {:try_start_3c .. :try_end_3f} :catch_1cd
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3f} :catch_1ac
    .catchall {:try_start_3c .. :try_end_3f} :catchall_1aa

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_43
    :try_start_43
    invoke-interface {v0}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v3

    if-eqz v3, :cond_9e

    invoke-static {v3}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_95

    move-object/from16 v16, v1

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v17, v3

    const/4 v3, 0x2

    invoke-virtual {v1, v6, v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v1

    if-nez v1, :cond_99

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_99

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    :cond_95
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    :cond_99
    :goto_99
    move-object/from16 v1, v16

    move-object/from16 v3, v17

    goto :goto_6d

    :cond_9e
    move-object/from16 v16, v1

    move-object/from16 v1, v16

    goto :goto_4c

    :cond_a3
    invoke-interface {v0}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_100

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v3

    if-eqz v3, :cond_f7

    invoke-static {v3}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v16

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    if-eqz v0, :cond_ec

    move-object/from16 v20, v1

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v21, v3

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v1

    if-nez v1, :cond_f0

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f0

    :cond_ec
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    :cond_f0
    :goto_f0
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v3, v21

    goto :goto_c7

    :cond_f7
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    goto :goto_ac

    :cond_100
    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v12, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;I)Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v16, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    const/4 v3, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, v16

    move-object v2, v8

    move-object v4, v0

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move v6, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    move-object/from16 v1, v16

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v2, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "systemDisabledList"

    invoke-virtual {v2, v3, v10, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    iget-object v2, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "systemPrevDisabledList"

    invoke-virtual {v2, v3, v11, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    iget-object v2, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "userRemovedList"

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_151
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_151} :catch_18c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_151} :catch_170
    .catch Ljava/security/cert/CertificateException; {:try_start_43 .. :try_end_151} :catch_157
    .catchall {:try_start_43 .. :try_end_151} :catchall_155

    :try_start_151
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_154
    .catch Ljava/lang/InterruptedException; {:try_start_151 .. :try_end_154} :catch_1ee
    .catch Ljava/lang/AssertionError; {:try_start_151 .. :try_end_154} :catch_1cd
    .catch Ljava/lang/RuntimeException; {:try_start_151 .. :try_end_154} :catch_1ac
    .catchall {:try_start_151 .. :try_end_154} :catchall_1aa

    goto :goto_1a5

    :catchall_155
    move-exception v0

    goto :goto_1a6

    :catch_157
    move-exception v0

    :try_start_158
    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_188

    :catch_170
    move-exception v0

    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_188
    .catchall {:try_start_158 .. :try_end_188} :catchall_155

    :goto_188
    :try_start_188
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_18b
    .catch Ljava/lang/InterruptedException; {:try_start_188 .. :try_end_18b} :catch_1ee
    .catch Ljava/lang/AssertionError; {:try_start_188 .. :try_end_18b} :catch_1cd
    .catch Ljava/lang/RuntimeException; {:try_start_188 .. :try_end_18b} :catch_1ac
    .catchall {:try_start_188 .. :try_end_18b} :catchall_1aa

    goto :goto_1a5

    :catch_18c
    move-exception v0

    :try_start_18d
    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a4
    .catchall {:try_start_18d .. :try_end_1a4} :catchall_155

    goto :goto_188

    :goto_1a5
    goto :goto_206

    :goto_1a6
    :try_start_1a6
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v0
    :try_end_1aa
    .catch Ljava/lang/InterruptedException; {:try_start_1a6 .. :try_end_1aa} :catch_1ee
    .catch Ljava/lang/AssertionError; {:try_start_1a6 .. :try_end_1aa} :catch_1cd
    .catch Ljava/lang/RuntimeException; {:try_start_1a6 .. :try_end_1aa} :catch_1ac
    .catchall {:try_start_1a6 .. :try_end_1aa} :catchall_1aa

    :catchall_1aa
    move-exception v0

    goto :goto_20b

    :catch_1ac
    move-exception v0

    :try_start_1ad
    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSystemKeyStoreAsUser("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_206

    :catch_1cd
    move-exception v0

    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSystemKeyStoreAsUser("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_206

    :catch_1ee
    move-exception v0

    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_206
    .catchall {:try_start_1ad .. :try_end_206} :catchall_1aa

    :goto_206
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_20b
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private rollbackNativeKeyStore(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    return-void
.end method

.method private rollbackNativeKeyStoreAsUser(II)V
    .registers 20

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v0, v9, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    const/16 v0, 0x3f2

    const/4 v1, 0x4

    move/from16 v11, p1

    if-ne v11, v1, :cond_16

    move v0, v8

    :cond_16
    move v12, v0

    iget-object v0, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v10, v12}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v15, v0

    invoke-direct {v7, v8}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_5a

    iget-object v3, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    goto :goto_37

    :cond_5b
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v13, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_6f
    new-instance v16, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object v1, v7

    move v3, v11

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_88
    iget-object v0, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v14, v12}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    iget-object v0, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v9, v1, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    return-void
.end method

.method private rollbackSystemKeyStoreAsUser(I)V
    .registers 28

    move-object/from16 v8, p0

    move/from16 v9, p1

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemDisabledList"

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemPrevDisabledList"

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "userRemovedList"

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v6, v0

    :try_start_30
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_3b} :catch_25b
    .catch Ljava/lang/AssertionError; {:try_start_30 .. :try_end_3b} :catch_239
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_3b} :catch_217
    .catchall {:try_start_30 .. :try_end_3b} :catchall_214

    move-object v15, v0

    :try_start_3c
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_40} :catch_1d1
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_19c
    .catch Ljava/security/cert/CertificateException; {:try_start_3c .. :try_end_40} :catch_181
    .catchall {:try_start_3c .. :try_end_40} :catchall_17d

    if-nez v0, :cond_59

    :try_start_42
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_55
    .catch Ljava/lang/AssertionError; {:try_start_42 .. :try_end_45} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_45} :catch_4d
    .catchall {:try_start_42 .. :try_end_45} :catchall_49

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_49
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_27a

    :catch_4d
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_219

    :catch_51
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_23b

    :catch_55
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_25d

    :cond_59
    :try_start_59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_67} :catch_1d1
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_67} :catch_19c
    .catch Ljava/security/cert/CertificateException; {:try_start_59 .. :try_end_67} :catch_181
    .catchall {:try_start_59 .. :try_end_67} :catchall_17d

    if-eqz v2, :cond_dc

    :try_start_69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v3

    if-eqz v3, :cond_c0

    invoke-static {v3}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v4

    move-object/from16 v16, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v17

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    if-eqz v0, :cond_b2

    move-object/from16 v20, v1

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v21, v3

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b6

    :cond_ae
    invoke-interface {v11, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_b1} :catch_d7
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_b1} :catch_d2
    .catch Ljava/security/cert/CertificateException; {:try_start_69 .. :try_end_b1} :catch_cd
    .catchall {:try_start_69 .. :try_end_b1} :catchall_c9

    goto :goto_b6

    :cond_b2
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    :cond_b6
    :goto_b6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v3, v21

    goto :goto_80

    :cond_bd
    move-object/from16 v20, v1

    goto :goto_c4

    :cond_c0
    move-object/from16 v16, v0

    move-object/from16 v20, v1

    :goto_c4
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    goto :goto_63

    :catchall_c9
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_20a

    :catch_cd
    move-exception v0

    move-wide/from16 v24, v6

    goto/16 :goto_184

    :catch_d2
    move-exception v0

    move-wide/from16 v24, v6

    goto/16 :goto_19f

    :catch_d7
    move-exception v0

    move-wide/from16 v24, v6

    goto/16 :goto_1d4

    :cond_dc
    move-object/from16 v16, v0

    :try_start_de
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_e6} :catch_1d1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e6} :catch_19c
    .catch Ljava/security/cert/CertificateException; {:try_start_de .. :try_end_e6} :catch_181
    .catchall {:try_start_de .. :try_end_e6} :catchall_17d

    if-eqz v1, :cond_f2

    :try_start_e8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v10, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_f1
    .catch Landroid/os/RemoteException; {:try_start_e8 .. :try_end_f1} :catch_d7
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_f1} :catch_d2
    .catch Ljava/security/cert/CertificateException; {:try_start_e8 .. :try_end_f1} :catch_cd
    .catchall {:try_start_e8 .. :try_end_f1} :catchall_c9

    goto :goto_e2

    :cond_f2
    :try_start_f2
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v12, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_100
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_104} :catch_1d1
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_104} :catch_19c
    .catch Ljava/security/cert/CertificateException; {:try_start_f2 .. :try_end_104} :catch_181
    .catchall {:try_start_f2 .. :try_end_104} :catchall_17d

    if-eqz v2, :cond_13a

    :try_start_106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_131

    move-object/from16 v22, v0

    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v23, v1

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v0

    if-eqz v0, :cond_135

    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_130} :catch_d7
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_130} :catch_d2
    .catch Ljava/security/cert/CertificateException; {:try_start_106 .. :try_end_130} :catch_cd
    .catchall {:try_start_106 .. :try_end_130} :catchall_c9

    goto :goto_135

    :cond_131
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    :cond_135
    :goto_135
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    goto :goto_100

    :cond_13a
    move-object/from16 v22, v0

    :try_start_13c
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v14, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    :try_end_143
    .catch Landroid/os/RemoteException; {:try_start_13c .. :try_end_143} :catch_1d1
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_143} :catch_19c
    .catch Ljava/security/cert/CertificateException; {:try_start_13c .. :try_end_143} :catch_181
    .catchall {:try_start_13c .. :try_end_143} :catchall_17d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object v1, v0

    move-object v2, v8

    move-object/from16 v18, v5

    move-object v5, v13

    move-wide/from16 v24, v6

    move v6, v9

    move-object/from16 v7, v17

    :try_start_151
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemDisabledList"

    invoke-virtual {v1, v2, v10, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemPrevDisabledList"

    invoke-virtual {v1, v2, v11, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "userRemovedList"

    invoke-virtual {v1, v2, v12, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_172
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_172} :catch_17b
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_172} :catch_179
    .catch Ljava/security/cert/CertificateException; {:try_start_151 .. :try_end_172} :catch_177
    .catchall {:try_start_151 .. :try_end_172} :catchall_1cd

    :try_start_172
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_175
    .catch Ljava/lang/InterruptedException; {:try_start_172 .. :try_end_175} :catch_1c8
    .catch Ljava/lang/AssertionError; {:try_start_172 .. :try_end_175} :catch_1c3
    .catch Ljava/lang/RuntimeException; {:try_start_172 .. :try_end_175} :catch_1bf
    .catchall {:try_start_172 .. :try_end_175} :catchall_1ba

    goto/16 :goto_1ee

    :catch_177
    move-exception v0

    goto :goto_184

    :catch_179
    move-exception v0

    goto :goto_19f

    :catch_17b
    move-exception v0

    goto :goto_1d4

    :catchall_17d
    move-exception v0

    move-wide v1, v6

    goto/16 :goto_20a

    :catch_181
    move-exception v0

    move-wide/from16 v24, v6

    :goto_184
    :try_start_184
    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b6

    :catch_19c
    move-exception v0

    move-wide/from16 v24, v6

    :goto_19f
    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b6
    .catchall {:try_start_184 .. :try_end_1b6} :catchall_1cd

    :goto_1b6
    :try_start_1b6
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1b9
    .catch Ljava/lang/InterruptedException; {:try_start_1b6 .. :try_end_1b9} :catch_1c8
    .catch Ljava/lang/AssertionError; {:try_start_1b6 .. :try_end_1b9} :catch_1c3
    .catch Ljava/lang/RuntimeException; {:try_start_1b6 .. :try_end_1b9} :catch_1bf
    .catchall {:try_start_1b6 .. :try_end_1b9} :catchall_1ba

    goto :goto_1ee

    :catchall_1ba
    move-exception v0

    move-wide/from16 v1, v24

    goto/16 :goto_27a

    :catch_1bf
    move-exception v0

    move-wide/from16 v1, v24

    goto :goto_219

    :catch_1c3
    move-exception v0

    move-wide/from16 v1, v24

    goto/16 :goto_23b

    :catch_1c8
    move-exception v0

    move-wide/from16 v1, v24

    goto/16 :goto_25d

    :catchall_1cd
    move-exception v0

    move-wide/from16 v1, v24

    goto :goto_20a

    :catch_1d1
    move-exception v0

    move-wide/from16 v24, v6

    :goto_1d4
    :try_start_1d4
    const-string v1, "RollbackRefreshOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1eb
    .catchall {:try_start_1d4 .. :try_end_1eb} :catchall_207

    :try_start_1eb
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1ee
    .catch Ljava/lang/InterruptedException; {:try_start_1eb .. :try_end_1ee} :catch_203
    .catch Ljava/lang/AssertionError; {:try_start_1eb .. :try_end_1ee} :catch_1ff
    .catch Ljava/lang/RuntimeException; {:try_start_1eb .. :try_end_1ee} :catch_1fb
    .catchall {:try_start_1eb .. :try_end_1ee} :catchall_1f6

    :goto_1ee
    nop

    move-wide/from16 v1, v24

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_277

    :catchall_1f6
    move-exception v0

    move-wide/from16 v1, v24

    goto/16 :goto_27a

    :catch_1fb
    move-exception v0

    move-wide/from16 v1, v24

    goto :goto_219

    :catch_1ff
    move-exception v0

    move-wide/from16 v1, v24

    goto :goto_23b

    :catch_203
    move-exception v0

    move-wide/from16 v1, v24

    goto :goto_25d

    :catchall_207
    move-exception v0

    move-wide/from16 v1, v24

    :goto_20a
    :try_start_20a
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v0
    :try_end_20e
    .catch Ljava/lang/InterruptedException; {:try_start_20a .. :try_end_20e} :catch_212
    .catch Ljava/lang/AssertionError; {:try_start_20a .. :try_end_20e} :catch_210
    .catch Ljava/lang/RuntimeException; {:try_start_20a .. :try_end_20e} :catch_20e
    .catchall {:try_start_20a .. :try_end_20e} :catchall_279

    :catch_20e
    move-exception v0

    goto :goto_219

    :catch_210
    move-exception v0

    goto :goto_23b

    :catch_212
    move-exception v0

    goto :goto_25d

    :catchall_214
    move-exception v0

    move-wide v1, v6

    goto :goto_27a

    :catch_217
    move-exception v0

    move-wide v1, v6

    :goto_219
    :try_start_219
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_274

    :catch_239
    move-exception v0

    move-wide v1, v6

    :goto_23b
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_274

    :catch_25b
    move-exception v0

    move-wide v1, v6

    :goto_25d
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_274
    .catchall {:try_start_219 .. :try_end_274} :catchall_279

    :goto_274
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_277
    nop

    return-void

    :catchall_279
    move-exception v0

    :goto_27a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private selectNativeKeystoreUid(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    const-string/jumbo v0, "nativeRemovedList_wifi"

    goto :goto_e

    :cond_8
    const/4 v1, 0x4

    if-ne p1, v1, :cond_e

    const-string/jumbo v0, "nativeRemovedList"

    :cond_e
    :goto_e
    return-object v0
.end method


# virtual methods
.method public execute(II)V
    .registers 13

    iput p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    iget v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getUsersKeystoreUnlocked(I)[Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersInfo()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    if-nez v3, :cond_23

    move-object v1, v2

    goto :goto_3d

    :cond_23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    iget v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    if-ne v5, v6, :cond_3c

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    goto :goto_27

    :cond_3d
    :goto_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_58
    iget v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    packed-switch v6, :pswitch_data_90

    goto :goto_6d

    :pswitch_5e
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_6d

    :pswitch_65
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_6d

    :pswitch_69
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    nop

    :goto_6d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_74
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget-object v8, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings(I)V

    goto :goto_74

    :cond_8e
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_69
        :pswitch_65
        :pswitch_5e
    .end packed-switch
.end method

.method hasPendingActionForUser(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method initPendingActionList()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_29
    goto :goto_a

    :cond_2a
    return-void
.end method

.method removeUserIdFromPendingList(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
