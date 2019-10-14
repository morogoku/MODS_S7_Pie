.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$CustomLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "PackageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomLinearLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;Landroid/content/Context;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$CustomLinearLayoutManager;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
