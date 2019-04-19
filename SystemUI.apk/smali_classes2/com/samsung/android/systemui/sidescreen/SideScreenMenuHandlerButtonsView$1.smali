.class Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SideScreenMenuHandlerButtonsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->hideView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->setVisibility(I)V

    return-void
.end method
