.class Lcom/android/systemui/qs/QSServiceBox$3;
.super Ljava/lang/Object;
.source "QSServiceBox.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSServiceBox;->showQSPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSServiceBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSServiceBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSServiceBox$3;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0111

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a0185

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a0382

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a047f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$3;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-static {v0}, Lcom/android/systemui/qs/QSServiceBox;->access$200(Lcom/android/systemui/qs/QSServiceBox;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2002"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$3;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-static {v0}, Lcom/android/systemui/qs/QSServiceBox;->access$300(Lcom/android/systemui/qs/QSServiceBox;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4201"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$3;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-static {v0}, Lcom/android/systemui/qs/QSServiceBox;->access$100(Lcom/android/systemui/qs/QSServiceBox;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox$3;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-static {v1}, Lcom/android/systemui/qs/QSServiceBox;->access$000(Lcom/android/systemui/qs/QSServiceBox;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2001"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$3;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox$3;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-static {v1}, Lcom/android/systemui/qs/QSServiceBox;->access$400(Lcom/android/systemui/qs/QSServiceBox;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSServiceBox;->launchContactUsApp(Landroid/content/Context;)Z

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2004"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
