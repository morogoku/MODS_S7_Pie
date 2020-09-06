.class Lcom/android/server/emailksproxy/EmailKeystoreService$1;
.super Ljava/lang/Object;
.source "EmailKeystoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/emailksproxy/EmailKeystoreService;->grantAccessForAKS(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emailksproxy/EmailKeystoreService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$uidscep:I


# direct methods
.method constructor <init>(Lcom/android/server/emailksproxy/EmailKeystoreService;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->this$0:Lcom/android/server/emailksproxy/EmailKeystoreService;

    iput p2, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    iput-object p3, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$alias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    const-string/jumbo v2, "knox_ccm_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_41

    const-string v4, "EmailKeystoreService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "grantAccessforCCM call setGrant : uidscep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " alias = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$alias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    iget-object v5, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$alias:Ljava/lang/String;

    invoke-interface {v1, v4, v5, v3}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->setGrant(ILjava/lang/String;Z)V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_41} :catch_98
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_41} :catch_93
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_8e
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_41} :catch_89

    :cond_41
    :try_start_41
    iget-object v2, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->this$0:Lcom/android/server/emailksproxy/EmailKeystoreService;

    # getter for: Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/emailksproxy/EmailKeystoreService;->access$000(Lcom/android/server/emailksproxy/EmailKeystoreService;)Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    invoke-static {v2, v4}, Lcom/android/server/emailksproxy/EmailKeystoreService;->bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    const-string v4, "EmailKeystoreService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "grantAccessforAKS call setGrant : uidscep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " alias = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$alias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    iget-object v5, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$alias:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v3}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_7c
    .catchall {:try_start_41 .. :try_end_7c} :catchall_82

    if-eqz v0, :cond_9c

    :try_start_7e
    invoke-virtual {v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_9c

    :catchall_82
    move-exception v2

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    :cond_88
    throw v2
    :try_end_89
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_89} :catch_98
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_89} :catch_93
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_89} :catch_8e
    .catch Ljava/lang/AssertionError; {:try_start_7e .. :try_end_89} :catch_89

    :catch_89
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/AssertionError;->printStackTrace()V

    goto :goto_9d

    :catch_8e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9c

    :catch_93
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9c

    :catch_98
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_9c
    :goto_9c
    nop

    :goto_9d
    return-void
.end method
