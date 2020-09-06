.class Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;
.super Ljava/lang/Thread;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SMIMEThread"
.end annotation


# instance fields
.field private mAccId:J

.field private mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/AccountSMIMECertificate;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iput-wide p2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    iget-object v0, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v7, v1, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget v8, v1, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->sMode:I

    iget-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v9, v1, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v10, 0x0

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMIME Certificate as Account Creation Time >>>>>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_33
    const-string/jumbo v1, "eas_account_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v1

    move-object v11, v1

    if-eqz v11, :cond_85

    const/4 v1, 0x1

    if-ne v8, v1, :cond_50

    iget-wide v3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    move-object v1, v11

    move-object v2, v9

    move-object v5, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v10, v1

    goto :goto_85

    :cond_50
    const/4 v1, 0x2

    if-ne v8, v1, :cond_5f

    iget-wide v3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    move-object v1, v11

    move-object v2, v9

    move-object v5, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v10, v1

    goto :goto_85

    :cond_5f
    const/4 v1, 0x3

    if-ne v8, v1, :cond_85

    iget-wide v3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    move-object v1, v11

    move-object v2, v9

    move-object v5, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_6c} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_6c} :catch_6e

    move v10, v1

    goto :goto_85

    :catch_6e
    move-exception v1

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMIMEThread : unexpected Exception occurs. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    goto :goto_86

    :catch_7a
    move-exception v1

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMIMEThread : Failed talking with exchange account policy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    :cond_85
    :goto_85
    nop

    :goto_86
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<<<<< SMIME Certificate as Account Creation Time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
