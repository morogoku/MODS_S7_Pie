.class Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;
.super Landroid/os/AsyncTask;
.source "ScepKeystoreProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkKeyAsUserSelectable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final mAlias:Ljava/lang/String;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->mAlias:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->mUid:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    # getter for: Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->access$000(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->mUid:I

    invoke-static {v2, v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->mAlias:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/security/IKeyChainService;->setUserSelectable(Ljava/lang/String;Z)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_48
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_1d} :catch_1e

    return-object v3

    :catch_1e
    move-exception v2

    const-string v3, "SCEPKeystoreProxyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to mark key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->mAlias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as user-selectable."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :catch_48
    move-exception v2

    const-string v3, "SCEPKeystoreProxyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to mark key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->mAlias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as user-selectable."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
