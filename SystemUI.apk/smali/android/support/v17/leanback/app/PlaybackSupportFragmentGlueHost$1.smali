.class Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;
.super Ljava/lang/Object;
.source "PlaybackSupportFragmentGlueHost.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;

.field final synthetic val$listener:Landroid/support/v17/leanback/widget/OnActionClickedListener;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;Landroid/support/v17/leanback/widget/OnActionClickedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;

    iput-object p2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;->val$listener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 2

    instance-of v0, p2, Landroid/support/v17/leanback/widget/Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;->val$listener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    move-object v1, p2

    check-cast v1, Landroid/support/v17/leanback/widget/Action;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/OnActionClickedListener;->onActionClicked(Landroid/support/v17/leanback/widget/Action;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method
