.class Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarAudioManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarAudioManagerHelperBroadcastReceiver"
.end annotation


# instance fields
.field mIsRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;->mIsRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->access$102(Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;I)I

    :cond_0
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;)Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;)Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;->mIsRegistered:Z

    return-void
.end method
