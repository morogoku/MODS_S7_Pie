.class Lcom/android/systemui/dnd/DragAndDropView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragAndDropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dnd/DragAndDropView;->animateDragEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dnd/DragAndDropView;


# direct methods
.method constructor <init>(Lcom/android/systemui/dnd/DragAndDropView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dnd/DragAndDropView$2;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView$2;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v0, v0, Lcom/android/systemui/dnd/DragAndDropView;->mService:Lcom/android/systemui/dnd/IDragService;

    invoke-interface {v0}, Lcom/android/systemui/dnd/IDragService;->dismiss()V

    return-void
.end method
