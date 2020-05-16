.class Lcom/android/server/policy/SamsungPhoneWindowManager$11;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->restartOneHandOpService()V
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

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$11;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$11;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;
    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$400(Lcom/android/server/policy/SamsungPhoneWindowManager;)Lcom/android/server/policy/OneHandOpPolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OneHandOpPolicyManager;->startService(Z)V

    return-void
.end method
