.class Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method private next()V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3902(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3900(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    aget-object v3, v0, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v6, p0

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "KeyguardDirectionLock"

    const-string v1, "AccountManagerFuture() run: "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2, v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3902(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "KeyguardDirectionLock"

    const-string v3, "AuthenticatorException occurred"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "KeyguardDirectionLock"

    const-string v3, "IOException occurred"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "KeyguardDirectionLock"

    const-string v3, "OperationCanceledException occurred"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->next()V

    nop

    return-void

    :goto_1
    iget v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->next()V

    throw v1
.end method
