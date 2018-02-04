.class Lcom/unity3d/player/GoogleARProxy;
.super Lcom/unity3d/player/b;


# instance fields
.field private f:Z


# direct methods
.method constructor <init>(Lcom/unity3d/player/d;)V
    .locals 1

    const-string v0, "Google AR"

    invoke-direct {p0, v0, p1}, Lcom/unity3d/player/b;-><init>(Ljava/lang/String;Lcom/unity3d/player/d;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/GoogleARProxy;->f:Z

    return-void
.end method

.method public static a()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "com.unity3d.unitygar.GoogleAR"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/unity3d/player/m;

    invoke-direct {v4, v0, v3}, Lcom/unity3d/player/m;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string v0, "getClassVersion"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v0, "getClassVersion"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Unity"

    const-string v3, "Loading ARCore V1+ path."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "Unity"

    const-string v1, "Loading ARCore Preview path (Version <= 1)."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Unity"

    const-string v1, "Loading ARCore Preview path."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0
.end method

.method private a(Ljava/lang/ClassLoader;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/unity3d/player/GoogleARProxy;->f:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v2, "com.unity3d.unitygar.GoogleAR"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/unity3d/player/m;

    invoke-direct {v4, v2, v3}, Lcom/unity3d/player/m;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string v2, "initialize"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/Activity;

    aput-object v6, v3, v5

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v2, "create"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v2, "pause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v2, "resume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/unity3d/player/m;->a(Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/unity3d/player/GoogleARProxy;->a:Lcom/unity3d/player/m;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/unity3d/player/GoogleARProxy;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/unity3d/player/GoogleARProxy;->b:Lcom/unity3d/player/d;

    const-string v3, "Google AR Error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/unity3d/player/d;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private final native tangoOnCreate(Landroid/app/Activity;)V
.end method

.method private final native tangoOnServiceConnected(Landroid/os/IBinder;)V
.end method

.method private final native tangoOnStop()V
.end method


# virtual methods
.method final a(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/player/GoogleARProxy;->a(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/unity3d/player/GoogleARProxy;->c:Landroid/content/Context;

    new-instance v0, Lcom/unity3d/player/GoogleARProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/GoogleARProxy$1;-><init>(Lcom/unity3d/player/GoogleARProxy;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleARProxy;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method final b()V
    .locals 1

    new-instance v0, Lcom/unity3d/player/GoogleARProxy$2;

    invoke-direct {v0, p0}, Lcom/unity3d/player/GoogleARProxy$2;-><init>(Lcom/unity3d/player/GoogleARProxy;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleARProxy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final c()V
    .locals 1

    new-instance v0, Lcom/unity3d/player/GoogleARProxy$3;

    invoke-direct {v0, p0}, Lcom/unity3d/player/GoogleARProxy$3;-><init>(Lcom/unity3d/player/GoogleARProxy;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleARProxy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final d()V
    .locals 1

    new-instance v0, Lcom/unity3d/player/GoogleARProxy$4;

    invoke-direct {v0, p0}, Lcom/unity3d/player/GoogleARProxy$4;-><init>(Lcom/unity3d/player/GoogleARProxy;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/GoogleARProxy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/GoogleARProxy;->f:Z

    return v0
.end method
