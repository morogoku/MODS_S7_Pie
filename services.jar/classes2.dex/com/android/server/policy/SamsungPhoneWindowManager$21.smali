.class Lcom/android/server/policy/SamsungPhoneWindowManager$21;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
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

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$21;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$21;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    # invokes: Lcom/android/server/policy/SamsungPhoneWindowManager;->notifyCpFolderTypeChange()V
    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1800(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    return-void
.end method
