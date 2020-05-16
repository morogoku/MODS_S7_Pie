.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$kVQYq5wYvCRMgtDCy7rvYXE4e3g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field private final synthetic f$0:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$kVQYq5wYvCRMgtDCy7rvYXE4e3g;->f$0:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$kVQYq5wYvCRMgtDCy7rvYXE4e3g;->f$0:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$updateActionViews$8(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
