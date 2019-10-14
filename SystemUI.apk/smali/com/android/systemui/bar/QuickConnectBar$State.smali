.class public Lcom/android/systemui/bar/QuickConnectBar$State;
.super Ljava/lang/Object;
.source "QuickConnectBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bar/QuickConnectBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public mCollapsed:Landroid/widget/RemoteViews;

.field public mExpanded:Landroid/widget/RemoteViews;

.field public mIsExpanded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/bar/QuickConnectBar$State;Z)Z
    .locals 2

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    iget-boolean v1, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/systemui/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    iput-boolean v1, p1, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    iput-object v1, p1, Lcom/android/systemui/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    :cond_3
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    iput-object v1, p1, Lcom/android/systemui/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    :cond_5
    return v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    :goto_0
    return-object v0
.end method

.method public isEmptyRemoteView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
