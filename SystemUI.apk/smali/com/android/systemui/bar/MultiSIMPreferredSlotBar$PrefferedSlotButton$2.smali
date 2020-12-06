.class Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$2;
.super Ljava/lang/Object;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

.field final synthetic val$this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$2;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iput-object p2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$2;->val$this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$2;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$2;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$2;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$2;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$3900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4306"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
