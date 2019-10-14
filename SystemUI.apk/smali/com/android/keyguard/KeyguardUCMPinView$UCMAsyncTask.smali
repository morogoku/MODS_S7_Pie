.class Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
.super Landroid/os/AsyncTask;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUCMPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UCMAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final opCode:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->opCode:I

    return-void
.end method

.method private getUCMStatus()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$600(Lcom/android/keyguard/KeyguardUCMPinView;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$200(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$300(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const-string v1, "KeyguardUCMPinView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetStatus thread result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$200(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_3
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->access$700()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$802(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;)Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->opCode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->getUCMStatus()V

    goto :goto_0

    :pswitch_2
    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$400(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$200(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$300(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$500(Lcom/android/keyguard/KeyguardUCMPinView;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->opCode:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$100(Lcom/android/keyguard/KeyguardUCMPinView;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$100(Lcom/android/keyguard/KeyguardUCMPinView;Z)V

    :goto_0
    return-void
.end method
