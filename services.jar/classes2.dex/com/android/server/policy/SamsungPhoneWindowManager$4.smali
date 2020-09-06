.class Lcom/android/server/policy/SamsungPhoneWindowManager$4;
.super Landroid/telephony/PhoneStateListener;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    goto :goto_b

    :cond_9
    const/4 v1, 0x0

    nop

    :cond_b
    :goto_b
    # setter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1102(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z
    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1100(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # invokes: Lcom/android/server/policy/SamsungPhoneWindowManager;->requestTraversalForCoverView()V
    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1200(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    :cond_1b
    return-void
.end method
