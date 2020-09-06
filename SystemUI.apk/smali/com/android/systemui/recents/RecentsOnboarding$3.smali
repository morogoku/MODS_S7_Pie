.class Lcom/android/systemui/recents/RecentsOnboarding$3;
.super Ljava/lang/Object;
.source "RecentsOnboarding.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1500(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1602(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f120acf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1702(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1302(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1800(Lcom/android/systemui/recents/RecentsOnboarding;)V

    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1500(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1602(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f12043e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1302(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1900(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$700(Lcom/android/systemui/recents/RecentsOnboarding;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$2000(Lcom/android/systemui/recents/RecentsOnboarding;Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1402(Lcom/android/systemui/recents/RecentsOnboarding;I)I

    :cond_1
    return-void
.end method
