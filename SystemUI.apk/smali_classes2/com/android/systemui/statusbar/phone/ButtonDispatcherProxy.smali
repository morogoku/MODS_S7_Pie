.class public Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;
.super Ljava/lang/Object;
.source "ButtonDispatcherProxy.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;


# instance fields
.field private mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    return-void
.end method

.method private getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method


# virtual methods
.method public addButton(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setButtonImage(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setButtonOnLongClickListener(ILandroid/view/View$OnLongClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method
