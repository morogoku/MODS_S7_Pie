.class Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;
.super Ljava/lang/Object;
.source "AppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->loadAppInfoData(Lcom/android/systemui/sidescreen/applist/model/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

.field final synthetic val$info:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;Lcom/android/systemui/sidescreen/applist/model/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iput-object p2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;->val$info:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;->val$info:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v1, v1, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;->val$info:Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    invoke-virtual {v2}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->access$200(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    invoke-static {v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->access$300(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2$1;-><init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$2;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
