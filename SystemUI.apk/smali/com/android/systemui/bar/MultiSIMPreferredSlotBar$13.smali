.class Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$13;
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

    iput-object p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$13;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$13;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->setCurrentVoiceCall(I)I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$13;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    return-void
.end method
