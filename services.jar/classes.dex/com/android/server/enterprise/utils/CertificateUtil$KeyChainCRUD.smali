.class public Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/utils/CertificateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyChainCRUD"
.end annotation


# instance fields
.field private mConnection:Landroid/security/KeyChain$KeyChainConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/security/IKeyChainService;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    return-void
.end method

.method private connect()Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->isConnected()Z

    move-result v0

    if-nez v0, :cond_61

    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    invoke-static {v1, v2}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_3b
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_61

    :catch_1a
    move-exception v1

    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to connect to KeyChainService for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    return v0

    :catch_3b
    move-exception v1

    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error binding KeyChain. Is KeyChainService running for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    return v0

    :cond_61
    :goto_61
    const/4 v0, 0x1

    return v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 6

    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    invoke-direct {v0, p0, p3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    return-object v1
.end method

.method public static listAliases(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5

    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    invoke-direct {v0, p0, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    return-object v1
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BII)Z
    .registers 8

    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    invoke-direct {v0, p0, p5}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    return v1
.end method


# virtual methods
.method public deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v0, "CertificateUtil"

    const-string v2, "Aborting deleteCertificate operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    move v0, v1

    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {v2, p1, p2}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_19

    move v0, v2

    nop

    return v0

    :catch_19
    move-exception v2

    const-string v3, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in KeyChain.deleteCertificate for alias "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public disconnect()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    if-eqz v0, :cond_17

    :try_start_4
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "CertificateUtil"

    const-string v2, "Error disconnecting from KeyChain!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    :cond_17
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 9

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v0, "CertificateUtil"

    const-string v2, "Aborting get operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    move-object v0, v1

    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {v2, p1, p2}, Landroid/security/IKeyChainService;->getCertificateSystem(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_19

    move-object v0, v2

    nop

    return-object v0

    :catch_19
    move-exception v2

    const-string v3, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in KeyChain.getCertificateSystem for alias "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public installCaCertificate([B)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v0, "CertificateUtil"

    const-string v2, "Aborting installCaCertificate operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {v0, p1}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_18

    nop

    nop

    return-object v0

    :catch_18
    move-exception v0

    const-string v2, "CertificateUtil"

    const-string v3, "Error in KeyChain.installCaCertificate"

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public listAliases(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v0, "CertificateUtil"

    const-string v2, "Aborting listAliases operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    move-object v0, v1

    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {v2, p1}, Landroid/security/IKeyChainService;->listAliases(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_19

    move-object v0, v2

    nop

    return-object v0

    :catch_19
    move-exception v2

    const-string v3, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in KeyChain.listAliases for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;[BI)Z
    .registers 11

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v0, "CertificateUtil"

    const-string v2, "Aborting put operation."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    move v0, v1

    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v2

    move v0, v2

    const-string v2, "USRPKEY_"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/security/IKeyChainService;->setUserSelectable(Ljava/lang/String;Z)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_25} :catch_27

    :cond_25
    nop

    return v0

    :catch_27
    move-exception v2

    const-string v3, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in KeyChain.put for alias "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
