.class Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$6;
.super Landroid/database/ContentObserver;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$6;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$6;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2802(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$6;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$6;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2902(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$6;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$6;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$6;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0, v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2802(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z

    return-void
.end method
