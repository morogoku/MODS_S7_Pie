.class Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnoxBadgeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider$KnoxBadgeReceiver;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v2, v1}, Lcom/android/systemui/stackdivider/Divider;->access$1500(Lcom/android/systemui/stackdivider/Divider;I)V

    :cond_0
    return-void
.end method
