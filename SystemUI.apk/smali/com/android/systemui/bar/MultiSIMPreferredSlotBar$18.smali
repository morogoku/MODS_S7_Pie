.class Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$18;
.super Ljava/lang/Object;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->showSlotListPopupWindow(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$18;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$18;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$3500(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$18;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$18;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$902(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$18;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$18;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$3400(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$18;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    return-void
.end method
