.class public Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;
.super Ljava/lang/Object;
.source "NavBarRemoteView.java"


# instance fields
.field private mRequestClass:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->mView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->setViewLayoutParams()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->mRequestClass:Ljava/lang/String;

    return-void
.end method

.method private setViewLayoutParams()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->mView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public add(Landroid/widget/LinearLayout;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->mView:Landroid/view/View;

    return-void
.end method
