.class Lcom/android/server/trust/TrustAgentWrapper$3;
.super Landroid/service/trust/ITrustAgentServiceCallback$Stub;
.source "TrustAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addEscrowToken([BI)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$700(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_51

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "TrustAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding escrow token for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "escrow_token"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_51
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Escrow token API is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public grantTrust(Ljava/lang/CharSequence;JI)V
    .registers 8

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "TrustAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTrust("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", durationMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public isEscrowTokenActive(JI)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$700(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_52

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "TrustAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checking the state of escrow token on user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "handle"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_52
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Escrow token API is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigureCompleted(ZLandroid/os/IBinder;)V
    .registers 6

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "TrustAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetTrustAgentFeaturesEnabledCompleted(result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeEscrowToken(JI)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$700(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_53

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "TrustAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing escrow token on user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "handle"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_53
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Escrow token API is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public revokeTrust()V
    .registers 3

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "TrustAgentWrapper"

    const-string/jumbo v1, "revokeTrust()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setManagingTrust(Z)V
    .registers 5

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "TrustAgentWrapper"

    const-string/jumbo v1, "managingTrust()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .registers 5

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "TrustAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing keyguard error message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unlockUserWithToken(J[BI)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$700(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5c

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "TrustAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlocking user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "handle"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "escrow_token"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_5c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Escrow token API is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
