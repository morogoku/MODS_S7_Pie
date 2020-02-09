.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;
.super Landroid/os/AsyncTask;
.source "KeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateRightPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/util/ShortcutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/ShortcutManager;->isRightShortcutForPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/util/ShortcutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/util/ShortcutManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->doInBackground([Ljava/lang/Void;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightPreview:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x20000000

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(I)V

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/util/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    goto :goto_2

    :cond_4
    :goto_1
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    :cond_5
    :goto_2
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iput-object p1, v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightPreview:Landroid/view/View;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->onPostExecute(Landroid/view/View;)V

    return-void
.end method
