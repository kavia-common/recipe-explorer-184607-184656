# Recipe Explorer (Frontend Flutter)

A modern Flutter app showcasing the Ocean Professional theme to browse, search, view details, and manage favorite recipes.

Features:
- Home: scrollable list of curated recipes with images, time, and ratings.
- Search: debounced search across titles, ingredients, and tags.
- Favorites: save/unsave recipes and see them listed.
- Details: hero image header, rating, time, favorite toggle, ingredients checklist, and step-by-step instructions with progress.

Architecture:
- Repository pattern (`IRecipeRepository`) with a `MockRecipeRepository` (ready to swap with API).
- Lightweight state management with Provider: `FavoritesProvider`, `SearchProvider`.
- Organized structure:
  - `lib/core` theme
  - `lib/data` repository
  - `lib/models` recipe model
  - `lib/screens` app screens
  - `lib/widgets` reusable UI
  - `lib/state` providers

Theme:
- Ocean Professional (Primary #2563EB, Secondary/Accent #F59E0B) with rounded corners, subtle shadows, and gradients.

Run:
- flutter pub get
- flutter run

Notes:
- Images use network placeholders from Unsplash. Internet permission is enabled for debug.
- TODOs:
  - Persist favorites with `shared_preferences`.
  - Replace mock repository with network API client and caching layer.
