.class Lcom/android/server/policy/SamsungPhoneWindowManager$6;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


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

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "com.samsung.action.DEBUG_RECONFIGURE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "PWM_DEBUG"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    array-length v1, v0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_19

    return-void

    :cond_19
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v2, v1, 0x1

    aget-boolean v1, v0, v1

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v1, v2, 0x1

    aget-boolean v2, v0, v2

    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v2, v1, 0x1

    aget-boolean v1, v0, v1

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v1, v2, 0x1

    aget-boolean v2, v0, v2

    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v2, v1, 0x1

    aget-boolean v1, v0, v1

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v1, v2, 0x1

    aget-boolean v2, v0, v2

    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    add-int/lit8 v2, v1, 0x1

    aget-boolean v1, v0, v1

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    :cond_60
    return-void
.end method
