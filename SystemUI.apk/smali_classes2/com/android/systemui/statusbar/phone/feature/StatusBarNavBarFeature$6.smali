.class Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$6;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarNavBarFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$6;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "mlstatus"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$6;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$500(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-result-object v2

    const-string v3, "StatusBarNavBarFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_MIRROR_LINK, mlstatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$6;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->forceShowNavigationBarWindow(ZJ)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$6;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->forceShowNavigationBarWindow(ZJ)V

    :goto_0
    return-void
.end method
