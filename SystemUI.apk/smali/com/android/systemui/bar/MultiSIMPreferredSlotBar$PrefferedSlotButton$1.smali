.class Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;
.super Ljava/lang/Object;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iput-object p2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->val$this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$3600(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$3700(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$3700(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1209e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$3000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->checkCall()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget v0, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v0, v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$3600(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$3800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method
